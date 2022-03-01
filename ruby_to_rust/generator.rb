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
    @params[:list].each do |e|
      @out << ""
      title_process(e)
      ruby_process(e)
      if e[:desc]
        @out << e[:desc]
      end
      rust_process(e)
    end
    puts "-" * 80
    puts @out
    puts "-" * 80
    output_file = Pathname("_#{@params[:output]}.md")
    output_file.write(@out.join("\n") + "\n")
  end

  def title_process(e)
    if e[:rust_title] == e[:ruby_title]
      s = "## #{e[:ruby_title]}"
    else
      s = "## #{e[:ruby_title]} → #{e[:rust_title]}"
    end
    puts s
    @out << s
  end

  def ruby_process(e)
    if !e[:ruby_code].to_s.empty?
      file = Pathname("_rubycode.rs")
      s = %(#{e[:ruby_code]})
      file.write(s)
      result = `xmpfilter #{file}`.strip
      @out << "```ruby:Ruby"
      @out << result
      @out << "```"
    end
  end

  def rust_process(e)
    if !e[:rust_code].empty?
      file = Pathname("_src/#{e[:rust_title]}.rs")
      code1 = e[:rust_code].lines.collect { |e|
        if e.include?("=>")
          e = e.sub(%r{\s*//\s*=>\s*}, "")
          %(println!("{:?}", #{e});\n)
        else
          e
        end
      }
      run_code = []
      if e[:rust_feature]
        run_code << e[:rust_feature]
        run_code << ""
      end
      run_code << %(fn main() {)
      run_code << %(    #{code1.join.strip})
      run_code << %(})
      run_code = run_code.join("\n") + "\n"
      FileUtils.makedirs(file.dirname)
      file.write(run_code)
      command = "cd _src && rustc #{file.basename} && ./#{file.basename('.*')}"
      result = `#{command}`

      result_lines = result.lines
      pos = 0
      code2 = e[:rust_code].gsub(%r/=>/) { |s|
        r = result_lines.shift
        "#{s} #{r}"
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

      url = "https://play.rust-lang.org/?code=#{CGI.escape(run_code)}&version=nightly&edition=2021"
      @out << %([Rust Playground で確認する](#{url}))
    end
  end
end

Generator.new(list: ITERATOR_LIST, output: "iterator").run
