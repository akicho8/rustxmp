# https://doc.rust-lang.org/std/iter/trait.Iterator.html
# https://danielkeep.github.io/itercheat_baked.html

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

  ################################################################################ イテレータ操作

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
    :ruby_title => "peek",
    :rust_title => "peek",
    :ruby_code => <<~EOT,
      it = ["a", "b"].each
      it.next  # =>
      it.peek  # =>
      it.next  # =>
    EOT
    :rust_code => <<~EOT,
      let mut it = ["a", "b"].iter().peekable();
      it.next()  // =>
      it.peek()  // =>
      it.next()  // =>
    EOT
    :desc => "もともと peek() はなくて peekable() すると peek() が生えるっぽい",
  },
  {
    :ruby_title => "?",
    :rust_title => "skip",
    :ruby_code => <<~EOT,
      it = ["a", "b", "c"].each
      2.times { it.next }
      it.next  # =>
    EOT
    :rust_code => <<~EOT,
      let it = ["a", "b", "c"].iter();
      let mut it = it.skip(2);
      it.next() // =>
    EOT
    :desc => "skip(n) を単に呼べば進むのではなく、新しいイテレータを受けとらないといけない",
  },
  {
    :ruby_title => "?",
    :rust_title => "fuse",
    :ruby_code => nil,
    :rust_code => <<~EOT,
      struct Foo {
          counter: i32,
      }

      // 偶数番目だけ番号を返す
      impl Iterator for Foo {
          type Item = i32;

          fn next(&mut self) -> Option<i32> {
              let val = self.counter;
              self.counter += 1;
              if val % 2 == 0 {
                  Some(val)
              } else {
                  None
              }
          }
      }

      let mut it = Foo { counter: 0 };
      it.next() // =>
      it.next() // =>
      it.next() // =>
      it.next() // =>
      let mut it = it.fuse();
      it.next() // =>
      it.next() // =>
      it.next() // =>
    EOT
    :desc => "fuse を呼んで最初の None が来てから None を継続する。どういうときに使うのかはわからない",
  },

  {
    :ruby_title => "?",
    :rust_title => "nth",
    :ruby_code => %([2, 3, 4].each.to_a.at(0) # =>),
    :rust_code => %([2, 3, 4].iter().nth(0) // =>),
    :desc => nil,
  },
  {
    :ruby_title => "to_a",
    :rust_title => "collect",
    :ruby_code => %([2, 3].each.to_a # =>),
    :rust_code => %([2, 3].iter().collect::<Vec<_>>() // =>),
    :desc => nil,
  },

  {
    :ruby_title => "each",
    :rust_title => "for_each",
    :ruby_code => <<~EOT,
      ["a", "b", "c"].each do |e|
        p e
      end
EOT
    :rust_code => <<~EOT,
      ["a", "b", "c"].iter().for_each(|e| {
          println!("{:?}", e);
      })
EOT
    :rust_feature => nil,
    :desc => "欲しかったのはこれ。for じゃない",
  },
  {
    :ruby_title => "tap",
    :rust_title => "inspect",
    :ruby_code => %(["a", "b"].tap { |e| p e }.to_a # =>),
    :rust_code => <<~EOT,
      let mut v = Vec::new();
      ["a", "b"].iter().inspect(|&e| v.push(e)).collect::<Vec<_>>() // =>
      v // =>
EOT
    :rust_feature => nil,
    :desc => "inspect は1つずつ要素が来るので tap とは少し異なる",
  },

  # array

  {
    :ruby_title => "reverse",
    :rust_title => "rev",
    :ruby_code => %(["a", "b"].reverse # =>),
    :rust_code => %(["a", "b"].iter().rev().collect::<Vec<_>>() // =>),
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
    :ruby_title => "take",
    :rust_title => "take",
    :ruby_code => <<~EOT,
      ["a", "b", "c"].take(2)   # =>
      (0..).lazy.take(2).force  # =>
EOT
    :rust_code => <<~EOT,
      ["a", "b", "c"].iter().take(2).collect::<Vec<_>>() // =>
      (0..).take(2).collect::<Vec<_>>()                  // =>
EOT
    :desc => nil,
  },
  {
    :ruby_title => "take_while",
    :rust_title => "take_while",
    :ruby_code => <<~EOT,
      [5, 6, 7, 8].take_while { |e| e < 7 } # =>
EOT
    :rust_code => <<~EOT,
      [5, 6, 7, 8].iter().take_while(|e| **e < 7).collect::<Vec<_>>() // =>
EOT
    :desc => "**e とは？",
  },

  {
    :ruby_title => "?",
    :rust_title => "step_by",
    :ruby_code => <<~EOT,
      [2, 3, 4].each_slice(2).collect(&:first) # =>

      v = [2, 3, 4]
      v.values_at(*0.step(v.size - 1, by: 2)) # =>
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

  {
    :ruby_title => "?",
    :rust_title => "intersperse",
    :ruby_code => nil,
    :rust_code => %(["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // =>),
    :rust_feature => "#![feature(iter_intersperse)]",
    :desc => "セパレータは毎回固定で良いとき用",
  },
  {
    :ruby_title => "?",
    :rust_title => "intersperse_with",
    :ruby_code => nil,
    :rust_code => %(["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // =>),
    :rust_feature => "#![feature(iter_intersperse)]",
    :desc => "セパレータを動的に切り替えたいとき用",
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
    :desc => nil,
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
    :desc => "FIXME: もっとスマートな方法があると信じたい",
  },

  ################################################################################

  {
    :ruby_title => "first",
    :rust_title => "first",
    :ruby_code => <<~EOT,
[2, 3, 4].first  # =>
EOT

    :rust_code => <<~EOT,
[2, 3, 4].first()       // =>
[2, 3, 4].iter().nth(0) // =>
EOT
    :desc => "iter().last() はあるのに iter().first() はない。代わりに iter().nth(0) を使えば iter().first() 相当になる。",
  },

  {
    :ruby_title => "last",
    :rust_title => "last",
    :ruby_code => <<~EOT,
[2, 3, 4].last           # =>
[2, 3, 4].each.to_a.last # =>
EOT

    :rust_code => <<~EOT,
[2, 3, 4].last()        // =>
[2, 3, 4].iter().last() // =>
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
