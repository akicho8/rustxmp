require "active_support/core_ext/array/wrap"
require "pathname"
require "fileutils"
require "cgi"
require "open3"
require "active_support/isolated_execution_state"
require "table_format"
require "./embed_processor"

class RubyToRustOne
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def run
    output_md
  end

  def output_md
    @out = []
    tp @params[:name]
    zenn_header_build
    table_build
    records.each { |e| render_all(e) }
    confirm
    body = @out.join("\n") + "\n"
    if @params[:zenn]
      file = Pathname("~/src/zenn-content/articles/#{@params[:slug]}.md")
    else
      file = Pathname("_md/#{@params[:name]}.md")
    end
    file = file.expand_path
    FileUtils.makedirs(file.dirname)
    file.write(body)
    puts file
  end

  private

  def records
    @records ||= yield_self do
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
      av.collect { |e| Element.new(self, e) }
    end
  end

  def zenn_header_build
    if @params[:zenn]
      @out << @params[:zenn_header_yaml]
    end
  end

  def table_build
    rows = records.collect do |e|
      {
        "Ruby" => e[:ruby_method],
        "Rust" => e[:rust_method],
        ""     => e.other_links,
      }.transform_values(&method(:escape_for_markdown))
    end
    @out << rows.to_t(markdown: true, truncate: false)
  end

  def render_all(e)
    @out << ""
    @out += e.render_all
  end

  def confirm
    if @params[:range] || @params[:method]
      puts "-" * 80
      puts @out
      puts "-" * 80
    end
  end

  def escape_for_markdown(e)
    e = e.gsub(/\|_\|/, '|\_|')
    e = e.gsub(/([<>|])/, '\\\\\1')
  end

  class Element
    delegate :[], to: :@params

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

    def title
      "`#{@params[:ruby_method]}` → `#{@params[:rust_method]}`"
    end

    def title_process
      puts title
      @out << "## #{title}"
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
        if result.scrub.match?(/syntax error/)
          puts result
          abort
        end
        @out << "```ruby:Ruby"
        @out << result
        @out << "```"
      end
    end

    def rust_process
      if !@params[:rust_example].to_s.empty?
        basename = [@params[:ruby_method], "as", @params[:rust_method]].join("_").gsub(/\W+/, "_").downcase
        basename = "_#{@base.params[:name]}_#{basename}".gsub(/_+/, "_")
        code2 = EmbedProcessor.new(source_code: main_rust_example, replace_code: @params[:rust_example], mark: "=>", basename: basename).to_s
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

    def rust_with_println
      @params[:rust_example].lines.collect { |e|
        if e.match?(%r{//\s*=>\s*})
          e = e.sub(%r{\s*//\s*=>\s*}, "")
          %(println!("{:?}", #{e});\n)
        else
          e
        end
      }
    end

    def main_rust_example
      @main_rust_example ||= yield_self do
        code = []
        if @params[:rust_feature]
          code << @params[:rust_feature]
          code << ""
        end
        code << %(fn main() {)
        code << %(    #{rust_with_println.join.strip})
        code << %(})
        code = code.join("\n") + "\n"
        code, *_ = Open3.capture2("rustfmt", stdin_data: code)
        p "[rustfmt] #{title}"
        code
      end
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
        method = url.to_s.scan(/\w+/).last
        unless @params[:rust_method].include?(method)
          abort @params.inspect
        end
      end
    end
  end
end
