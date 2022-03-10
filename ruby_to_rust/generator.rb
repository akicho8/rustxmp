require "active_support/core_ext/array/wrap"
require "pathname"
require "fileutils"
require "cgi"
require "open3"
require "active_support/isolated_execution_state"
require "table_format"

class Generator
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def run
    output_md
  end

  def output_md
    @out = []
    table_build
    list.each { |e| render_all(e) }
    puts "-" * 80
    puts @out
    puts "-" * 80
    body = @out.join("\n") + "\n"
    file = Pathname("_md/#{@params[:name]}.md")
    FileUtils.makedirs(file.dirname)
    file.write(body)
  end

  private

  def list
    av = @params[:list]
    if @params[:target] == :stable
      av = av.reject { |e| e[:rust_feature] }
    end
    if v = @params[:range]
      av = Array.wrap(av[eval(v)])
    end
    if v = @params[:method]
      av = av.find_all { |e| [e[:ruby_method], e[:rust_method]].join("/").include?(v) }
    end
    av
  end

  def table_build
    rows = list.collect do |e|
      element = Element.new(self, e)
      {
        "Ruby" => e[:ruby_method],
        "Rust" => e[:rust_method],
        ""     => element.other_links,
      }.transform_values { |e| e.gsub("|", "\\\\\\\\|") }
    end
    @out << rows.to_t(markdown: true, truncate: false)
  end

  def render_all(e)
    @out << ""
    @element = Element.new(self, e)
    @out += @element.render_all
  end

  class Element
    def initialize(base, params)
      @base = base
      @params = params
      @out = []
    end

    def render_all
      validate!
      title_process
      ruby_process
      rust_process
      desc_process
      ref_process
      if s = other_links
        @out << s
      end
      @out
    end

    def other_links
      s = []
      s << doc_source_processs
      s << play_ground_process
      unless s.empty?
        s.join(" ")
      end
    end

    def title_process
      if @params[:rust_method] == @params[:ruby_method] && false
        s = "# #{@params[:ruby_method]}"
      else
        s = "## `#{@params[:ruby_method]}` → `#{@params[:rust_method]}`"
      end
      puts s
      @out << s
    end

    def ruby_process
      if !@params[:ruby_example].to_s.empty?
        basename = @params[:ruby_method].gsub(/\W+/, "_")
        file = Pathname("_src/#{@base.params[:name]}/#{basename}.rb")
        s = %(#{@params[:ruby_example]})
        FileUtils.makedirs(file.dirname)
        file.write(s)
        command = "xmpfilter #{file}"
        result = `#{command}`.strip
        @out << "```ruby:Ruby"
        @out << result
        @out << "```"
      end
    end

    def rust_process
      if !@params[:rust_example].to_s.empty?
        basename = @params[:rust_method].gsub(/\W+/, "_")
        file = Pathname("_src/#{@base.params[:name]}/#{basename}.rs")
        puts file

        FileUtils.makedirs(file.dirname)
        file.write(main_rust_example)
        command = "cd _src/#{@base.params[:name]} && rustc #{file.basename} && ./#{file.basename('.*')}"
        result = `#{command}`
        unless $?.success?
          puts file
          puts $?
          exit
        end

        result_lines = result.lines
        code2 = @params[:rust_example].gsub(%r/=>.*/) { |s|
          r = result_lines.shift
          "=> #{r.rstrip}"
        }

        result_lines.each do |e|
          code2 += "// >> #{e.rstrip}\n"
        end
        if @params[:rust_feature]
          lang = "Rust (nightly)"
        else
          lang = "Rust"
        end
        @out << "```rust:#{lang}"
        @out << code2.strip
        @out << "```"
      end
    end

    def short_rust_example
      @params[:rust_example].lines.collect { |e|
        if e.include?("=>")
          e = e.sub(%r{\s*//\s*=>\s*}, "")
          %(println!("{:?}", #{e});\n)
        else
          e
        end
      }
    end

    def main_rust_example
      code = []
      if @params[:rust_feature]
        code << @params[:rust_feature]
        code << ""
      end
      code << %(fn main() {)
      code << %(    #{short_rust_example.join.strip})
      code << %(})
      code = code.join("\n") + "\n"
      code, *_ = Open3.capture2("rustfmt", stdin_data: code)
      code
    end

    def desc_process
      if @params[:desc]
        @out << @params[:desc]
      end
    end

    def ref_process
      if v = @params[:ref_url]
        @out << %([こちらの方が詳しい](#{v}))
      end
    end

    def play_ground_process
      unless @params[:rust_example].to_s.empty?
        code = CGI.escape(main_rust_example)
        url = "https://play.rust-lang.org/?code=#{code}&version=nightly&edition=2021"
        %([実行](#{url}))
      end
    end

    def doc_source_processs
      if url = @params[:doc_url]
        %([DOC](#{url}))
      end
    end

    def validate!
      if url = @params[:doc_url]
        methods = @params[:rust_method].to_s.scan(/\w+/)
        if methods.one?
          unless url.include?(methods.first)
            abort @params.inspect
          end
        end
      end
    end
  end
end
