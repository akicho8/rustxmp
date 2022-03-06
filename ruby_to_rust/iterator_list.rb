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
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#tymethod.next",
  },
  {
    :ruby_title => "?",
    :rust_title => "size_hint",
    :ruby_code => <<~EOT,
     EOT
    :rust_code => <<~EOT,
      let it = ["a", "b", "c"].iter();
      it.size_hint() // =>
     EOT
    :desc => "イテレータの残りの長さの境界(下限と上限)を返す(？)",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint",
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
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.peekable",
  },
  {
    :ruby_title => "?",
    :rust_title => "nth",
    :ruby_code => "",
    :rust_code => <<~EOT,
    let mut it = ['a', 'b', 'c', 'd'].iter();
    it.nth(1)  // =>
    it.nth(1)  // =>
    it.nth(1)  // =>
EOT
    :desc => "at(i) 相当かと思いきや内部でポインタを進めてからその位置の値を返すようだ",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth",
  },

  {
    :ruby_title => "?",
    :rust_title => "advance_by",
    :ruby_code => <<~EOT,
      it = [5, 6, 7, 8].to_enum
      2.times { it.next }
      it.next // =>
EOT
    :rust_code => <<~EOT,
    let mut it = [5, 6, 7, 8].iter();
    it.advance_by(2) // =>
    it.next()        // =>
EOT
    :rust_feature => "#![feature(iter_advance_by)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.advance_by",
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
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse",
  },

  {
    :ruby_title => "to_a",
    :rust_title => "collect",
    :ruby_code => %([2, 3].each.to_a # =>),
    :rust_code => %([2, 3].iter().collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect",
  },

  {
    :ruby_title => "each",
    :rust_title => "for_each",
    :ruby_code => <<~EOT,
      ["a", "b", "c"].each { |e| p e }
EOT
    :rust_code => <<~EOT,
      ["a", "b", "c"].iter().for_each(|e| println!("{:?}", e));
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each",
  },

  {
    :ruby_title => "each + break",
    :rust_title => "try_for_each",
    :ruby_code => <<~EOT,
      r = ["a", "b", "c"].each do |e|
        if e == "b"
          break e
        end
      end
      r # =>
EOT
    :rust_code => <<~EOT,
      use std::ops::ControlFlow::{Break, Continue};

      let r = ["a", "b", "c"].iter().try_for_each(|&e| {
          if e == "b" {
              return Break(e)
          }
          Continue(())
      });
      r // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_for_each",
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
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.inspect",
  },

  # array

  {
    :ruby_title => "reverse",
    :rust_title => "rev",
    :ruby_code => %(["a", "b"].reverse # =>),
    :rust_code => %(["a", "b"].iter().rev().collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev",
  },
  {
    :ruby_title => "map",
    :rust_title => "map",
    :ruby_code => %([2, 3].map { |e| e * 2 } # =>),
    :rust_code => %([2, 3].iter().map(|e| e * 2).collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map",
  },
  {
    :ruby_title => "?",
    :rust_title => "map_while",
    :ruby_code => <<~EOT,
      [3, 4, 5, 6].find_all { |e| e < 5 }.map { |e| e * 2 } # =>
EOT
    :rust_code => <<~EOT,
      let it = [3, 4, 5, 6].iter().map_while(|&e| {
          if e < 5 {
              Some(e * 2)
          } else {
              None
          }
      });
      it.collect::<Vec<_>>() // =>
EOT
    :desc => "クロージャーがOptionで返す版。Noneなら打ち切る",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while",
  },
  {
    :ruby_title => "find_all",
    :rust_title => "filter",
    :ruby_code => %([2, 3, 4].find_all { |e| e % 2 == 0 } # =>),
    :rust_code => %([2, 3, 4].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter",
  },

  {
    :ruby_title => "collect + find_all",
    :rust_title => "filter_map",
    :ruby_code => <<~EOT,
      ["", "5", "", "6"].collect { |e| Integer(e, exception: false) }.compact # =>
EOT
    :rust_code => <<~EOT,
      // ok() は Result の Ok を Some に変換し、Err を None にする
      ["", "5", "", "6"].iter().filter_map(|e| e.parse::<isize>().ok()).collect::<Vec<_>>() // =>
      // 分解すると map + filter + map 相当をしていることがわかる
      ["", "5", "", "6"].iter().map(|e| e.parse::<isize>()).filter(|e| e.is_ok()).map(|e| e.unwrap()).collect::<Vec<_>>() // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter_map",
  },

  {
    :ruby_title => "collect + compact + first",
    :rust_title => "find_map",
    :ruby_code => <<~EOT,
      ["", "5", "", "6"].collect { |e| Integer(e, exception: false) }.compact.first # =>
EOT
    :rust_code => <<~EOT,
      // ok() は Result の Ok を Some に変換し、Err を None にする
      ["", "5", "", "6"].iter().find_map(|e| e.parse::<isize>().ok()) // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find_map",
  },

  {
    :ruby_title => "?",
    :rust_title => "scan",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
      let it = [2, 3].iter().scan(10, |a, &e| {
          *a += e;
          Some(*a)
      });
      it.collect::<Vec<_>>() // =>
EOT
    :desc => "",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan",
  },

  #### take, drop 系
  {
    :ruby_title => "take",
    :rust_title => "take",
    :ruby_code => <<~EOT,
      [5, 6, 7, 8].take(2)   # =>
EOT
    :rust_code => <<~EOT,
      [5, 6, 7, 8].iter().take(2).collect::<Vec<_>>() // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take",
  },
  {
    :ruby_title => "take_while",
    :rust_title => "take_while",
    :ruby_code => <<~EOT,
      [5, 6, 7, 8].take_while { |e| e < 7 }  # =>
EOT
    :rust_code => <<~EOT,
      [5, 6, 7, 8].iter().take_while(|&&e| e < 7).collect::<Vec<_>>() // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take_while",
  },
  {
    :ruby_title => "drop",
    :rust_title => "skip",
    :ruby_code => <<~EOT,
      [5, 6, 7, 8].drop(2)   # =>
EOT
    :rust_code => <<~EOT,
      [5, 6, 7, 8].iter().skip(2).collect::<Vec<_>>() // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip",
  },
  {
    :ruby_title => "drop_while",
    :rust_title => "skip_while",
    :ruby_code => <<~EOT,
      [5, 6, 7, 8].drop_while { |e| e < 7 }  # =>
EOT
    :rust_code => <<~EOT,
      [5, 6, 7, 8].iter().skip_while(|&&e| e < 7).collect::<Vec<_>>() // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip_while",
  },

  {
    :ruby_title => "?",
    :rust_title => "step_by",
    :ruby_code => <<~EOT,
      [5, 6, 7, 8].each_slice(2).collect(&:first) # =>

      v = [5, 6, 7, 8]
      v.values_at(*0.step(v.size - 1, by: 2)) # =>
EOT
    :rust_code => %([5, 6, 7, 8].iter().step_by(2).collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.step_by",
  },
  {
    :ruby_title => "zip",
    :rust_title => "zip",
    :ruby_code => %([2, 3].zip([4, 5]) # =>),
    :rust_code => %([2, 3].iter().zip([4, 5].iter()).collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip",
  },
  {
    :ruby_title => "with_index",
    :rust_title => "with_index",
    :ruby_code => %(['a', 'b'].each.with_index.to_a # =>),
    :rust_code => %(['a', 'b'].iter().enumerate().collect::<Vec<_>>() // =>),
    :desc => "index の位置が逆なので注意",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.with_index",
  },
  {
    :ruby_title => "chain",
    :rust_title => "chain",
    :ruby_code => %([2, 3].chain([4, 5]).to_a # =>),
    :rust_code => %([2, 3].iter().chain([4, 5].iter()).collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain",
  },
  {
    :ruby_title => "flatten(1)",
    :rust_title => "flatten",
    :ruby_code => %([[2, 3], [4, 5]].flatten(1) # =>),
    :rust_code => %([[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten",
  },
  {
    :ruby_title => "flat_map",
    :rust_title => "flat_map",
    :ruby_code => %([[2, 3], [4, 5]].flat_map(&:itself) # =>),
    :rust_code => %([[2, 3], [4, 5]].iter().flat_map(|e| e).collect::<Vec<_>>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map",
  },

  {
    :ruby_title => "partition",
    :rust_title => "partition",
    :ruby_code => %([5, 6, 7, 8].partition(&:even?)  # =>),
    :rust_code => <<~EOT,
      let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
      even  // =>
      odd   // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition",
  },

  {
    :ruby_title => "?",
    :rust_title => "partition_in_place",
    :ruby_code => %(),
    :rust_code => <<~EOT,
      let mut ary = [2, 3, 4, 5, 6];
      let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
      index  // =>
      ary    // =>
      ary[..index].iter().collect::<Vec<_>>() // =>
      ary[index..].iter().collect::<Vec<_>>() // =>
EOT
    :rust_feature => "#![feature(iter_partition_in_place)]",
    :desc => "レシーバを破壊的に並び換える。ドキュメントの「個数を返す」は「境界のインデックスを返す」とも考えてもよさそう。",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place",
  },
  {
    :ruby_title => "?",
    :rust_title => "is_partitioned",
    :ruby_code => %(),
    :rust_code => <<~EOT,
      [2, 3, 4, 5, 6].iter().is_partitioned(|&e| e % 2 == 0) // =>
      [2, 4, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0) // =>
      [4, 2, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0) // =>
EOT
    :rust_feature => "#![feature(iter_is_partitioned)]",
    :desc => "partition_in_place を適用した結果と同じなら true",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned",
  },

  {
    :ruby_title => "?",
    :rust_title => "intersperse",
    :ruby_code => nil,
    :rust_code => %(["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // =>),
    :rust_feature => "#![feature(iter_intersperse)]",
    :desc => "セパレータは毎回固定で良いとき用",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse",
  },
  {
    :ruby_title => "?",
    :rust_title => "intersperse_with",
    :ruby_code => nil,
    :rust_code => %(["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // =>),
    :rust_feature => "#![feature(iter_intersperse)]",
    :desc => "セパレータを動的に切り替えたいとき用",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with",
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
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count",
  },

  {
    :ruby_title => "inject(0, :+)",
    :rust_title => "fold",
    :ruby_code => %([2, 3, 4].inject(0, :+) # =>),
    :rust_code => %([2, 3, 4].iter().fold(0, |a, e| a + e) // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold",
  },

  {
    :ruby_title => "inject(0, :+) + break",
    :rust_title => "try_fold",
    :ruby_code => <<~EOT,
      sum = [5, 5, 5].inject(0) {|a, e|
        if a >= 10
          break
        end
        a + e
      }
      sum # =>
EOT
    :rust_code => <<~EOT,
      let sum = [5, 5, 5].iter().try_fold(0, |a, &e| {
          if a >= 10 {
              return None
          }
          Some(a + e)
      });
      sum // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_fold",
  },

  {
    :ruby_title => "inject(&:+)",
    :rust_title => "reduce",
    :ruby_code => %([5, 6].inject(:+) # =>),
    :rust_code => %(vec![5, 6].into_iter().reduce(|a, e| a + e) // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce",
  },
  {
    :ruby_title => "inject(:+) + break",
    :rust_title => "try_reduce",
    :ruby_code => %(),
    :rust_code => %(vec![5, 6].into_iter().try_reduce(|a, e| Some(a + e)) // =>),
    :rust_feature => "#![feature(iterator_try_reduce)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_reduce",
  },

  {
    :ruby_title => "sum",
    :rust_title => "sum",
    :ruby_code => %([2, 3, 4].sum # =>),
    :rust_code => %([2, 3, 4].iter().sum::<isize>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum",
  },
  {
    :ruby_title => "inject(1, :*)",
    :rust_title => "product",
    :ruby_code => %([2, 3, 4].inject(1, :*) # =>),
    :rust_code => %([2, 3, 4].iter().product::<isize>() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product",
  },

  {
    :ruby_title => "all?",
    :rust_title => "all",
    :ruby_code => %([2, 3, 4].all? { |e| e >= 0 } # =>),
    :rust_code => %([2, 3, 4].iter().all(|&e| e >= 0) // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all",
  },
  {
    :ruby_title => "any?",
    :rust_title => "any",
    :ruby_code => %([2, 3, 4].any? { |e| e >= 4 } # =>),
    :rust_code => %([2, 3, 4].iter().any(|&e| e >= 4) // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any",
  },
  {
    :ruby_title => "find",
    :rust_title => "find",
    :ruby_code => %([2, 3, 4].find { |e| e == 3 } # =>),
    :rust_code => %([2, 3, 4].iter().find(|&&e| e == 3) // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find",
  },
  {
    :ruby_title => "index",
    :rust_title => "index",
    :ruby_code => %([5, 6, 5].index { |e| e == 5 } # =>),
    :rust_code => %([5, 6, 5].iter().position(|&e| e == 5) // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.index",
  },
  {
    :ruby_title => "rindex",
    :rust_title => "rposition",
    :ruby_code => %([5, 6, 5].rindex { |e| e == 5 } # =>),
    :rust_code => %([5, 6, 5].iter().rposition(|&e| e == 5) // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition",
  },

  ################################################################################
  {
    :ruby_title   => "<=>",
    :rust_title   => "cmp",
    :ruby_code    => %([5, 6] <=> [5, 6] # =>),
    :rust_code    => %([5, 6].iter().cmp([5, 6].iter()) // =>),
    :desc         => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp",
  },
  {
    :ruby_title   => "?",
    :rust_title   => "cmp_by",
    :ruby_code    => %(),
    :rust_code    => %([5, 6].iter().cmp_by(&[5, 6], |&a, &b| a.cmp(&b)) // =>),
    :rust_feature => "#![feature(iter_order_by)]",
    :desc         => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp_by",
  },
  {
    :ruby_title   => "<=>",
    :rust_title   => "partial_cmp",
    :ruby_code    => %([5, 6] <=> [5, 6] # =>),
    :rust_code    => %([5, 6].iter().partial_cmp([5, 6].iter()) // =>),
    :desc         => "Some でラップしてある",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp",
  },
  {
    :ruby_title   => "?",
    :rust_title   => "partial_cmp_by",
    :ruby_code    => %(),
    :rust_code    => %([5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)) // =>),
    :rust_feature => "#![feature(iter_order_by)]",
    :desc         => "Some でラップしてある",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp_by",
  },
  ################################################################################

  {
    :ruby_title => "?",
    :rust_title => "eq ne lt le gt ge",
    :ruby_code => nil,
    :rust_code => <<~EOT,
      [1].iter().eq([1, 2].iter())  // =>
      [1].iter().ne([1, 2].iter())  // =>
      [1].iter().lt([1, 2].iter())  // =>
      [1].iter().le([1, 2].iter())  // =>
      [1].iter().gt([1, 2].iter())  // =>
      [1].iter().ge([1, 2].iter())  // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.ge",
  },

  {
    :ruby_title => "?",
    :rust_title => "eq_by",
    :ruby_code => <<~EOT,
      [2, 3].collect { |e| e + e } == [4, 6]                     # =>
      [2, 3].each.with_index.all? { |e, i| e + e == [4, 6][i] }  # =>

      it = [4, 6].to_enum
      [2, 3].all? { |a; b| b = it.next; a + a == b }             # =>
EOT
    :rust_code => <<~EOT,
      [2, 3].iter().eq_by(&[4, 6], |&a, &b| a + a == b) // =>
EOT
    :rust_feature => "#![feature(iter_order_by)]",
    :desc => "これは使いづらい",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq_by",
  },

  ################################################################################

  {
    :hidden => true,
    :ruby_title => "?",
    :rust_title => "cloned",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    [3, 4].iter().cloned().collect::<Vec<_>>()     // =>
    // ↓これと同じことらしい
    [3, 4].iter().map(|&e| e).collect::<Vec<_>>()  // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cloned",
    :ref_url => "https://qiita.com/lo48576/items/34887794c146042aebf1#cloned-iteratort---iteratort",
  },
  {
    :hidden => true,
    :ruby_title => "?",
    :rust_title => "copied",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    [3, 4].iter().copied().collect::<Vec<_>>()     // =>
    // ↓これと同じことらしい
    [3, 4].iter().map(|&e| e).collect::<Vec<_>>()  // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.copied",
    :ref_url => "https://qiita.com/lo48576/items/34887794c146042aebf1#copied-iteratort---iteratort-%E3%81%9F%E3%81%A0%E3%81%97-t-%E3%81%AF-copy",
  },

  {
    :hidden => true,
    :ruby_title => "?",
    :rust_title => "by_ref",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    let mut it = [5, 6, 7].iter();
    it.by_ref().collect::<Vec<_>>() // =>
    // by_ref() がなければ次で失敗する
    it                              // =>
EOT
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.by_ref",
    :ref_url => nil,
  },

  ################################################################################

  {
    :ruby_title => "first",
    :rust_title => "first",
    :ruby_code => <<~EOT,
[2, 3, 4].first  # =>
EOT

    :rust_code => <<~EOT,
[2, 3, 4].first()  // =>
EOT
    :desc => "iter().last() はあるのに iter().first() はない",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.first",
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
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last",
  },

  {
    :ruby_title => "max",
    :rust_title => "max",
    :ruby_code => %([2, 3, -4].max # =>),
    :rust_code => %([2_isize, 3, -4].iter().max() // =>),
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max",
  },
  {
    :ruby_title => "max_by",
    :rust_title => "max_by_key",
    :ruby_code => %([2, 3, -4].max_by(&:abs) # =>),
    :rust_code => %([2_isize, 3, -4].iter().max_by_key(|e| e.abs()) // =>),
    :desc => "Rust は元の値を key と呼んでいる",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key",
  },
  {
    :ruby_title => "?",
    :rust_title => "max_by",
    :ruby_code => %([2, 3, -4].sort { |a, b| a <=> b }.max # =>),
    :rust_code => %([2_isize, 3, -4].iter().max_by(|a, b| a.cmp(b)) // =>),
    :desc => "使いづらい",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by",
  },

  {
    :ruby_title => "min",
    :rust_title => "min",
    :desc => "使い方は max と同じ",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min",
  },
  {
    :ruby_title => "min_by",
    :rust_title => "min_by_key",
    :desc => "使い方は max_by_key と同じ",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key",
  },
  {
    :ruby_title => "?",
    :rust_title => "min_by",
    :desc => "使い方は max_by と同じ",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by",
  },

  ################################################################################

  {
    :ruby_title => "?",
    :rust_title => "is_sorted",
    :ruby_code => <<~EOT,
      v = [2, 3, 4]
      v == v.sort # =>
EOT
    :rust_code => %([2, 3, 4].iter().is_sorted() // =>),
    :rust_feature => "#![feature(is_sorted)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted",
  },
  {
    :ruby_title => "?",
    :rust_title => "is_sorted_by",
    :ruby_code => <<~EOT,
      v = [2, 3, 4]
      v == v.sort { |a, b| a <=> b } # =>
EOT
    :rust_code => %([2, 3, 4].iter().is_sorted_by(|a, b| a.partial_cmp(b)) // =>),
    :rust_feature => "#![feature(is_sorted)]",
    :desc => "partial_cmp は Some(Less) みたいなのを返す",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by",
  },
  {
    :ruby_title => "?",
    :rust_title => "is_sorted_by_key",
    :ruby_code => <<~EOT,
      v = [2, -3, 4]
      v == v.sort_by(&:abs) # =>
EOT
    :rust_code => %([2_isize, -3, 4].iter().is_sorted_by_key(|e| e.abs()) // =>),
    :rust_feature => "#![feature(is_sorted)]",
    :desc => "",
    :source_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by_key",
  },
]
