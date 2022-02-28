# https://doc.rust-lang.org/std/iter/trait.Iterator.html
# https://danielkeep.github.io/itercheat_baked.html
# https://qiita.com/drafts/f68495f5270ba29d45d4/edit

require "pathname"

ITERATOR_LIST = [
  # base

  {
    :ruby_title => "each",
    :rust_title => "iter",
    :ruby_code => %([2, 3].each # =>),
    :rust_code => %([2, 3].iter() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "to_a",
    :rust_title => "collect",
    :ruby_code => %([2, 3].each.to_a # =>),
    :rust_code => %([2, 3].iter().collect::<Vec<_>>() // =>),
    :desc => nil,
  },

  # array

  {
    :ruby_title => "reverse",
    :rust_title => "rev",
    :ruby_code => %([2, 3].reverse # =>),
    :rust_code => %([2, 3].iter().rev().collect::<Vec<_>>() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "map",
    :rust_title => "map",
    :ruby_code => %([2, 3].map { |e| e * 2 } # =>),
    :rust_code => %([2, 3].iter().map(|e| e * 2).collect::<Vec<_>>() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "find_all",
    :rust_title => "filter",
    :ruby_code => %([2, 3, 4].find_all { |e| e % 2 == 0 } # =>),
    :rust_code => %([2, 3, 4].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "?",
    :rust_title => "step_by",
    :ruby_code => <<~EOT,
      [2, 3, 4].each_slice(2).collect(&:first) # =>,

      v = [2, 3, 4]
      v.values_at(*0.step(v.size - 1, by: 2)) # => [2, 4]
EOT
    :rust_code => %([2, 3, 4].iter().step_by(2).collect::<Vec<_>>() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "zip",
    :rust_title => "zip",
    :ruby_code => %([2, 3].zip([4, 5]) # =>),
    :rust_code => %([2, 3].iter().zip([4, 5].iter()).collect::<Vec<_>>() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "with_index",
    :rust_title => "with_index",
    :ruby_code => %(['a', 'b'].each.with_index.to_a # =>),
    :rust_code => %(['a', 'b'].iter().enumerate().collect::<Vec<_>>() // =>),
    :desc => "index の位置が逆なので注意",
  },
  {
    :ruby_title => "chain",
    :rust_title => "chain",
    :ruby_code => %([2, 3].chain([4, 5]).to_a # =>),
    :rust_code => %([2, 3].iter().chain([4, 5].iter()).collect::<Vec<_>>() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "flatten",
    :rust_title => "flatten",
    :ruby_code => %(([2, 3] + [4, 5]).flatten # =>),
    :rust_code => %([[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>() // =>),
    :desc => nil,
  },

  ################################################################################ value

  {
    :ruby_title => "count",
    :rust_title => "count",
    :ruby_code => <<~EOT,
[2, 3, 4].each.count # =>
[2, 3, 4].count      # =>
EOT
    :rust_code => <<~EOT,
[2, 3, 4].iter().count() // =>
[2, 3, 4].len()          // =>
EOT
    :desc => "統一してほしい",
  },

  {
    :ruby_title => "inject",
    :rust_title => "fold",
    :ruby_code => %([2, 3, 4].inject(0, :+) # =>),
    :rust_code => %([2, 3, 4].iter().fold(0, |a, e| a + e) // =>),
    :desc => nil,
  },

  {
    :ruby_title => "sum",
    :rust_title => "sum",
    :ruby_code => %([2, 3, 4].sum # =>),
    :rust_code => %([2, 3, 4].iter().sum::<isize>() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "inject(1, :*)",
    :rust_title => "product",
    :ruby_code => %([2, 3, 4].inject(1, :*) # =>),
    :rust_code => %([2, 3, 4].iter().product::<isize>() // =>),
    :desc => "ruby の product と全然ちがうので注意",
  },
  {
    :ruby_title => "all?",
    :rust_title => "all",
    :ruby_code => %([2, 3, 4].all? { |e| e >= 0 } # =>),
    :rust_code => %([2, 3, 4].iter().all(|&e| e >= 0) // =>),
    :desc => nil,
  },
  {
    :ruby_title => "any?",
    :rust_title => "any",
    :ruby_code => %([2, 3, 4].any? { |e| e >= 4 } # =>),
    :rust_code => %([2, 3, 4].iter().any(|&e| e >= 4) // =>),
    :desc => nil,
  },
  {
    :ruby_title => "find",
    :rust_title => "find",
    :ruby_code => %([2, 3, 4].find { |e| e == 3 } # =>),
    :rust_code => %([2, 3, 4].iter().find(|&&e| e == 3) // =>),
    :desc => nil,
  },
  {
    :ruby_title => "index",
    :rust_title => "index",
    :ruby_code => %([5, 6, 5].index { |e| e == 5 } # =>),
    :rust_code => %([5, 6, 5].iter().position(|&e| e == 5) // =>),
    :desc => nil,
  },
  {
    :ruby_title => "rindex",
    :rust_title => "rposition",
    :ruby_code => %([5, 6, 5].rindex { |e| e == 5 } # =>),
    :rust_code => %([5, 6, 5].iter().rposition(|&e| e == 5) // =>),
    :desc => nil,
  },
  {
    :ruby_title => "==",
    :rust_title => "cmp",
    :ruby_code => %([2, 3, 4] == [2, 3, 4] # =>),
    :rust_code => %([2, 3, 4].iter().cmp([2, 3, 4].iter()) == std::cmp::Ordering::Equal // =>),
    :desc => "もっとスマートな方法があると信じたい",
  },
  {
    :ruby_title => "next",
    :rust_title => "next",
    :ruby_code => <<~EOT,
      it = [2, 3].each
      it.next # =>
      it.next # =>
      it.next rescue $! # =>
    EOT
    :rust_code => <<~EOT,
      let mut it = [2, 3].iter();
      it.next() // =>
      it.next() // =>
      it.next() // =>
    EOT
    :desc => nil,
  },
  {
    :ruby_title => "?",
    :rust_title => "nth",
    :ruby_code => %([2, 3, 4].each.to_a.at(0) # =>),
    :rust_code => %([2, 3, 4].iter().nth(0) // =>),
    :desc => nil,
  },
  {
    :ruby_title => "last",
    :rust_title => "last",
    :ruby_code => <<~EOT,
[2, 3, 4].each.to_a.last # =>
[2, 3, 4].last           # =>
EOT

    :rust_code => <<~EOT,
[2, 3, 4].iter().last() // =>
[2, 3, 4].last()        // =>
EOT
    :desc => "単に最後が欲しいなら iter() を仲介しなくてよい",
  },
  {
    :ruby_title => "max",
    :rust_title => "max",
    :ruby_code => %([2, 3, -4].max # =>),
    :rust_code => %([2_i32, 3, -4].iter().max() // =>),
    :desc => nil,
  },
  {
    :ruby_title => "max_by",
    :rust_title => "max_by_key",
    :ruby_code => %([2, 3, -4].max_by(&:abs) # =>),
    :rust_code => %([2_i32, 3, -4].iter().max_by_key(|e| e.abs()) // =>),
    :desc => "Rust は元の値をなぜか key と呼んでいるので混乱しそう",
  },
  {
    :ruby_title => "?",
    :rust_title => "max_by",
    :ruby_code => %([2, 3, -4].sort { |a, b| a <=> b }.max # =>),
    :rust_code => %([2_i32, 3, -4].iter().max_by(|a, b| a.cmp(b)) // =>),
    :desc => "使いづらい",
  },
]

class App
  def initialize(params)
    @params = params
  end

  def run
    @out = []
    @params[:list].each do |e|
      @out << ""
      title_process(e)
      ruby_process(e)
      rust_process(e)
      if e[:desc]
        @out << e[:desc]
      end
    end
    puts @out
    output_file = Pathname("_#{@params[:output]}.md")
    output_file.write(@out.join("\n") + "\n")
  end

  def title_process(e)
    if e[:rust_title] == e[:ruby_title]
      s = "### #{e[:ruby_title]}"
    else
      s = "### #{e[:ruby_title]} → #{e[:rust_title]}"
    end
    puts s
    @out << s
  end

  def ruby_process(e)
    if !e[:ruby_code].empty?
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
      file = Pathname("_rustcode.rs")
      code1 = e[:rust_code].lines.collect { |e|
        if e.include?("=>")
          e = e.sub(%r{\s*//\s*=>\s*}, "")
          %(println!("{:?}", #{e});\n)
        else
          e
        end
      }
      s = %(fn main() { #{code1.join} })
      file.write(s)
      result = `rustc #{file} && ./#{file.basename('.*')}`

      pos = 0
      code2 = e[:rust_code].gsub(%r/=>/) { |s|
        "#{s} #{result.lines[pos].strip}".tap { pos += 1 }
      }
      @out << "```rust:Rust"
      @out << code2.strip
      @out << "```"
    end
  end
end

App.new(list: ITERATOR_LIST, output: "iterator").run
