require "pathname"
require "fileutils"
require "cgi"

class Generator
  def initialize(params)
    @params = params
  end

  def run
    @out = []
    list.each { |e| process_all(e) }
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
    if v = ARGV.first
      av = av.find_all { |e| [e[:ruby_title], e[:rust_title]].join("/").include?(v) }
    end
    av
  end

  def process_all(e)
    @out << ""
    title_process(e)
    ruby_process(e)
    rust_process(e)
    desc_process(e)
    ref_process(e)
    s = []
    s << play_ground_process(e)
    s << doc_source_processs(e)
    unless s.empty?
      @out << s.join(" ")
    end
  end

  def title_process(e)
    if e[:rust_title] == e[:ruby_title] && false
      s = "## #{e[:ruby_title]}"
    else
      s = "## #{e[:ruby_title]} → #{e[:rust_title]}"
    end
    puts s
    @out << s
  end

  def ruby_process(e)
    if !e[:ruby_code].to_s.empty?
      basename = e[:ruby_title].gsub(/\W+/, "_")
      file = Pathname("_src/#{@params[:name]}/#{basename}.rb")
      s = %(#{e[:ruby_code]})
      FileUtils.makedirs(file.dirname)
      file.write(s)
      command = "xmpfilter #{file}"
      result = `#{command}`.strip
      @out << "```ruby:Ruby"
      @out << result
      @out << "```"
    end
  end

  def rust_process(e)
    if !e[:rust_code].to_s.empty?
      basename = e[:rust_title].gsub(/\W+/, "_")
      file = Pathname("_src/#{@params[:name]}/#{basename}.rs")
      puts file

      FileUtils.makedirs(file.dirname)
      file.write(main_rust_code(e))
      command = "cd _src/#{@params[:name]} && rustc #{file.basename} && ./#{file.basename('.*')}"
      result = `#{command}`
      unless $?.success?
        puts file
        puts $?
        exit
      end

      result_lines = result.lines
      code2 = e[:rust_code].gsub(%r/=>.*/) { |s|
        r = result_lines.shift
        "=> #{r.rstrip}"
      }

      result_lines.each do |e|
        code2 += "// >> #{e.rstrip}\n"
      end
      if e[:rust_feature]
        lang = "Rust (nightly)"
      else
        lang = "Rust"
      end
      @out << "```rust:#{lang}"
      @out << code2.strip
      @out << "```"
    end
  end

  def short_rust_code(e)
    e[:rust_code].lines.collect { |e|
      if e.include?("=>")
        e = e.sub(%r{\s*//\s*=>\s*}, "")
        %(println!("{:?}", #{e});\n)
      else
        e
      end
    }
  end

  def main_rust_code(e)
    code = []
    if e[:rust_feature]
      code << e[:rust_feature]
      code << ""
    end
    code << %(fn main() {)
    code << %(    #{short_rust_code(e).join.strip})
    code << %(})
    code.join("\n") + "\n"
  end

  def desc_process(e)
    if e[:desc]
      @out << e[:desc]
    end
  end

  def ref_process(e)
    if v = e[:ref_url]
      @out << %([こちらの方が詳しい](#{v}))
    end
  end

  def play_ground_process(e)
    unless e[:rust_code].to_s.empty?
      code = CGI.escape(main_rust_code(e))
      url = "https://play.rust-lang.org/?code=#{code}&version=nightly&edition=2021"
      %([実行](#{url}))
    end
  end

  def doc_source_processs(e)
    if url = e[:source_url]
      %([DOC](#{url}))
    end
  end
end
