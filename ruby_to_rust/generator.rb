# https://doc.rust-lang.org/std/iter/trait.Iterator.html
# https://danielkeep.github.io/itercheat_baked.html
# https://qiita.com/drafts/f68495f5270ba29d45d4/edit

require "pathname"
require "fileutils"
require "uri"
require "cgi"
require "./iterator_list"

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
    file = Pathname("_md/#{@params[:output]}.md")
    FileUtils.makedirs(file.dirname)
    file.write(body)
  end

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
    ground_process(e)
    ground_process2(e)
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
      file = Pathname("_src/#{basename}.rb")
      s = %(#{e[:ruby_code]})
      FileUtils.makedirs(file.dirname)
      file.write(s)
      command = "cd _src && xmpfilter #{file.basename}"
      result = `#{command}`.strip
      @out << "```ruby:Ruby"
      @out << result
      @out << "```"
    end
  end

  def rust_process(e)
    if !e[:rust_code].to_s.empty?
      basename = e[:rust_title].gsub(/\W+/, "_")
      file = Pathname("_src/#{basename}.rs")
      puts file

      FileUtils.makedirs(file.dirname)
      file.write(rust_code2(e))
      command = "cd _src && rustc #{file.basename} && ./#{file.basename('.*')}"
      result = `#{command}`
      unless $?.success?
        puts file
        puts $?
        exit
      end

      result_lines = result.lines
      code2 = e[:rust_code].gsub(%r/=>/) { |s|
        r = result_lines.shift
        "#{s} #{r.rstrip}"
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

  def rust_code1(e)
    e[:rust_code].lines.collect { |e|
      if e.include?("=>")
        e = e.sub(%r{\s*//\s*=>\s*}, "")
        %(println!("{:?}", #{e});\n)
      else
        e
      end
    }
  end

  def rust_code2(e)
    code = []
    if e[:rust_feature]
      code << e[:rust_feature]
      code << ""
    end
    code << %(fn main() {)
    code << %(    #{rust_code1(e).join.strip})
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

  def ground_process(e)
    unless e[:rust_code].to_s.empty?
      url = "https://play.rust-lang.org/?code=#{CGI.escape(rust_code2(e))}&version=nightly&edition=2021"
      @out << %([Rust Playground で確認する](#{url}))
    end
  end

  def ground_process2(e)
    if url = e[:source_url]
      @out << %([本家のドキュメント](#{url}))
    end
  end
end

Generator.new(list: ITERATOR_LIST, output: "iterator", target: :nightly).run
