# https://doc.rust-lang.org/std/iter/trait.Iterator.html
# https://danielkeep.github.io/itercheat_baked.html

ITERATOR_LIST = {
  :name => "iterator",
  :list => [
#     {
#       :hidden => true,
#       :ruby_method => "?",
#       :rust_method => "cloned",
#       :ruby_example => <<~EOT,
# EOT
#       :rust_example => <<~EOT,
#     [3, 4].iter().cloned().collect::<Vec<_>>()     // =>
#     // ↓これと同じことらしい
#     [3, 4].iter().map(|&e| e).collect::<Vec<_>>()  // =>
# EOT
#       :desc => nil,
#       :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cloned",
#       :ref_url => "https://qiita.com/lo48576/items/34887794c146042aebf1#cloned-iteratort---iteratort",
#     },
#     {
#       :hidden => true,
#       :ruby_method => "?",
#       :rust_method => "copied",
#       :ruby_example => <<~EOT,
# EOT
#       :rust_example => <<~EOT,
#     [3, 4].iter().copied().collect::<Vec<_>>()     // =>
#     // ↓これと同じことらしい
#     [3, 4].iter().map(|&e| e).collect::<Vec<_>>()  // =>
# EOT
#       :desc => nil,
#       :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.copied",
#       :ref_url => "https://qiita.com/lo48576/items/34887794c146042aebf1#copied-iteratort---iteratort-%E3%81%9F%E3%81%A0%E3%81%97-t-%E3%81%AF-copy",
#     },

    # base

    {
      :ruby_method => "to_enum",
      :rust_method => "iter",
      :ruby_example => %([5, 6, 7].to_enum # =>),
      :rust_example => %([5, 6, 7].iter() // =>),
      :desc => "いちいち `iter` を呼ばないといけない理由は、更新の有無や所有権が絡んで `iter` `iter_mut` `into_iter` などを使い分けないといけないから",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.iter",
    },

    {
      :ruby_method => "entries",
      :rust_method => "collect",
      :ruby_example => %([5, 6, 7].each.entries # =>),
      :rust_example => %([5, 6, 7].iter().collect::<Vec<_>>() // =>),
      :desc => "よく使うことになると思われる。型が伝わっているときは `::<Vec<_>>` がいらない。が、いるときもあったりする。よくわからない。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect",
    },

    {
      :ruby_method => "each",
      :rust_method => "for_each",
      :ruby_example => <<~EOT,
      [5, 6, 7].each { |e| p e }
EOT
      :rust_example => <<~EOT,
      [5, 6, 7].iter().for_each(|e| println!("{:?}", e));
EOT
      :rust_feature => nil,
      :desc => "`for` は先後が逆になって混乱するので `for_each` を使いたい",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each",
    },

    {
      :ruby_method => "each + break",
      :rust_method => "try_for_each",
      :ruby_example => <<~EOT,
      r = [5, 6, 7].each do |e|
        if e == 6
          break e * 10
        end
      end
      r # =>
EOT
      :rust_example => <<~EOT,
      use std::ops::ControlFlow::{Break, Continue};

      let r = [5, 6, 7].iter().try_for_each(|&e| {
          if e == 6 {
              return Break(e * 10)
          }
          Continue(())
      });
      r // =>
EOT
      :rust_feature => nil,
      :desc => "for_each で break できる版。ただ Continue を毎回呼ばないといけないのが奇妙ではある。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_for_each",
    },

    {
      :ruby_method => "tap { |e| e.each {} }",
      :rust_method => "inspect",
      :ruby_example => %([5, 6, 7].tap { |e| p e }.entries # =>),
      :rust_example => <<~EOT,
      let mut v = Vec::new();
      [5, 6, 7].iter().inspect(|&e| v.push(e)).collect::<Vec<_>>() // =>
      v // =>
EOT
      :rust_feature => nil,
      :desc => "1つずつ要素が来るので注意",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.inspect",
    },

#     # array
#
    {
      :ruby_method => "reverse",
      :rust_method => "rev",
      :ruby_example => %([5, 6, 7].reverse # =>),
      :rust_example => <<~EOT,
[5, 6, 7].iter().rev().collect::<Vec<_>>() // =>
EOT
      :desc => "Vec 自体に reverse があるけど破壊してしまう。iter 経由の rev は破壊しない。ただ名前は合わせてほしかった。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev",
    },

    {
      :ruby_method => "map",
      :rust_method => "map",
      :ruby_example => %([5, 6, 7].map { |e| e * 10 } # =>),
      :rust_example => %([5, 6, 7].iter().map(|e| e * 10).collect::<Vec<_>>() // =>),
      :desc => "元を破壊しないので使いやすい",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map",
    },

    {
      :ruby_method => "find_all",
      :rust_method => "filter",
      :ruby_example => %([4, 5, 6].find_all { |e| e % 2 == 0 } # =>),
      :rust_example => %([4, 5, 6].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // =>),
      :desc => "元を破壊しないので retain より使いやすい",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter",
    },

    {
      :ruby_method => "find_all + collect",
      :rust_method => "filter_map",
      :ruby_example => <<~EOT,
[5, 6, 7, 8].find_all(&:even?).collect { |e| e * 10 } # =>
[5, 6, 7, 8].filter_map { |e| e * 10 if e.even? }     # =>
EOT
      :rust_example => <<~EOT,
    let r = [5, 6, 7, 8].iter().filter_map(|&e| {
        if e % 2 == 0 {
           Some(e * 10)
        } else {
           None
        }
    });
    r.collect::<Vec<_>>() // =>

    // 混乱しにくい書き方
    [5, 6, 7, 8].iter().filter(|&e| e % 2 == 0).map(|e| e * 10).collect::<Vec<_>>() // =>
EOT
      :desc => "2つのことを同時に行うメソッドは混乱してしまう。filter + map の方がわかりやすい。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter_map",
    },

    {
      :ruby_method => "find して何か",
      :rust_method => "find_map",
      :ruby_example => <<~EOT,
[5, 6, 7, 8].find(&:even?)&.* 10 # =>
EOT
      :rust_example => <<~EOT,
    let r = [5, 6, 7, 8].iter().find_map(|&e| {
        if e % 2 == 0 {
           Some(e * 10)
        } else {
           None
        }
    });
    r // =>

    // 混乱しにくい書き方
    if let Some(v) = [5, 6, 7, 8].iter().find(|&e| e % 2 == 0) {
        v * 10 // =>
    }
EOT
      :desc => "map とあるせいで繰り返しを想像してしまうがただの find と考えた方がよい。また、よっぽどのことがなければ find した後で何かした方がわかりやすい。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find_map",
    },

    {
      :ruby_method => "take_while + collect",
      :rust_method => "map_while",
      :ruby_example => <<~EOT,
[5, 6, 7, 8].take_while(&:even?).collect { |e| e * 10 } # =>
EOT
      :rust_example => <<~EOT,
      let it = [5, 6, 7, 8].iter().map_while(|&e| {
          if e % 2 == 0 {
              Some(e * 10)
          } else {
              None
          }
      });
      it.collect::<Vec<_>>() // =>

      // 混乱しにくい書き方
      [5, 6, 7, 8].iter().take_while(|&e| e % 2 == 0).map(|e| e * 10).collect::<Vec<_>>() // =>
EOT
      :desc => "filter_map の先頭から続く有効なものだけ版。take_while + map の方がわかりやすい。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while",
    },

    {
      :ruby_method => "map の何か渡せる版",
      :rust_method => "scan",
      :ruby_example => <<~EOT,
EOT
      :rust_example => <<~EOT,
      let it = [2, 3].iter().scan(10, |a, &e| {
          *a += e;
          Some(*a)
      });
      it.collect::<Vec<_>>() // =>
EOT
      :desc => "",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan",
    },

    #### take, drop 系
    {
      :ruby_method => "take",
      :rust_method => "take",
      :ruby_example => <<~EOT,
      [5, 6, 7, 8].take(2)   # =>
EOT
      :rust_example => <<~EOT,
      [5, 6, 7, 8].iter().take(2).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take",
    },
    {
      :ruby_method => "take_while",
      :rust_method => "take_while",
      :ruby_example => <<~EOT,
      [5, 6, 7, 8].take_while { |e| e < 7 }  # =>
EOT
      :rust_example => <<~EOT,
      [5, 6, 7, 8].iter().take_while(|&&e| e < 7).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take_while",
    },
    {
      :ruby_method => "drop",
      :rust_method => "skip",
      :ruby_example => <<~EOT,
      [5, 6, 7, 8].drop(2)   # =>
EOT
      :rust_example => <<~EOT,
      [5, 6, 7, 8].iter().skip(2).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip",
    },
    {
      :ruby_method => "drop_while",
      :rust_method => "skip_while",
      :ruby_example => <<~EOT,
      [5, 6, 7, 8].drop_while { |e| e < 7 }  # =>
EOT
      :rust_example => <<~EOT,
      [5, 6, 7, 8].iter().skip_while(|&&e| e < 7).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip_while",
    },
    {
      :ruby_method => "each_slice(n).collect(&:first)",
      :rust_method => "step_by(n)",
      :ruby_example => <<~EOT,
      [5, 6, 7, 8].each_slice(2).collect(&:first) # =>

      v = [5, 6, 7, 8]
      v.values_at(*0.step(v.size - 1, by: 2)) # =>
EOT
      :rust_example => %([5, 6, 7, 8].iter().step_by(2).collect::<Vec<_>>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.step_by",
    },

    {
      :ruby_method => "zip",
      :rust_method => "zip",
      :ruby_example => %([5, 6].zip([7, 8]) # =>),
      :rust_example => %([5, 6].iter().zip([7, 8].iter()).collect::<Vec<_>>() // =>),
      :desc => "Rustのほうは引数が1つしか取れないし要素の数が合わないと切り捨てられたりするので注意",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip",
    },

    {
      :ruby_method => "with_index",
      :rust_method => "enumerate",
      :ruby_example => %(["a", "b"].each.with_index.entries # =>),
      :rust_example => %(["a", "b"].iter().enumerate().collect::<Vec<_>>() // =>),
      :desc => "Enumerable 的なものを連想してしまう。用語がぜんぜん違うので注意。index の位置が逆なのも注意。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.enumerate",
    },

    {
      :ruby_method => "flatten(1)",
      :rust_method => "flatten",
      :ruby_example => %([[5, 6], [7, 8]].flatten(1) # =>),
      :rust_example => %([[5, 6], [7, 8]].iter().flatten().collect::<Vec<_>>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten",
    },

    {
      :ruby_method => "flat_map",
      :rust_method => "flat_map",
      :ruby_example => %([[5, 6], [7, 8]].flat_map(&:itself) # =>),
      :rust_example => %([[5, 6], [7, 8]].iter().flat_map(|e| e).collect::<Vec<_>>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map",
    },

    {
      :ruby_method => "partition",
      :rust_method => "partition",
      :ruby_example => %([5, 6, 7, 8].partition(&:even?)  # =>),
      :rust_example => <<~EOT,
      let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
      even  // =>
      odd   // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition",
    },

    {
      :ruby_method => "partition の破壊版",
      :rust_method => "partition_in_place",
      :ruby_example => %(),
      :rust_example => <<~EOT,
      let mut ary = [5, 6, 7, 8, 9];
      let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
      index  // =>
      ary    // =>
      ary[..index].iter().collect::<Vec<_>>() // =>
      ary[index..].iter().collect::<Vec<_>>() // =>
EOT
      :rust_feature => "#![feature(iter_partition_in_place)]",
      :desc => <<~EOT
これだけ特殊で元を破壊するので iter でははなく **iter_mut** を使わないといけない。
ドキュメントの「個数を返す」はピンとこないので「境界のインデックスを返す」と考えた方がよさそう。
EOT
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place",
    },
    {
      :ruby_method => "?",
      :rust_method => "is_partitioned",
      :ruby_example => %(),
      :rust_example => <<~EOT,
      [6, 8, 5, 7, 9].iter().is_partitioned(|&e| e % 2 == 0) // =>
EOT
      :rust_feature => "#![feature(iter_is_partitioned)]",
      :desc => "partition_in_place を適用した結果と同じなら true",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned",
    },

    ################################################################################ value

    {
      :ruby_method => "count",
      :rust_method => "count",
      :ruby_example => <<~EOT,
[5, 6, 7].each.count # =>
[5, 6, 7].count      # =>
EOT
      :rust_example => <<~EOT,
[5, 6, 7].iter().count() // =>
[5, 6, 7].len()          // =>
EOT
      :desc => "統一してほしい",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count",
    },

    {
      :ruby_method => "inject(0, :+)",
      :rust_method => "fold",
      :ruby_example => %([5, 6, 7].inject(0, :+) # =>),
      :rust_example => %([5, 6, 7].iter().fold(0, |a, e| a + e) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold",
    },

    {
      :ruby_method => "inject(0, :+) + break",
      :rust_method => "try_fold",
      :ruby_example => <<~EOT,
      sum = [5, 6, 7].inject(0) {|a, e|
        if a >= 10
          break
        end
        a + e
      }
      sum # =>
EOT
      :rust_example => <<~EOT,
      let sum = [5, 6, 7].iter().try_fold(0, |a, &e| {
          if a >= 10 {
              return None
          }
          Some(a + e)
      });
      sum // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_fold",
    },

    {
      :ruby_method => "inject(&:+)",
      :rust_method => "reduce",
      :ruby_example => %([5, 6, 7].inject(:+) # =>),
      :rust_example => %(vec![5, 6, 7].into_iter().reduce(|a, e| a + e) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce",
    },

    {
      :ruby_method => "inject(:+) + break",
      :rust_method => "try_reduce",
      :ruby_example => <<~EOT,
      sum = [5, 6, 7].inject {|a, e|
        if a >= 10
          break
        end
        a + e
      }
      sum # =>
EOT
      :rust_example => <<~EOT,
let r = vec![5, 6, 7].into_iter().try_reduce(|a, e| {
    if a >= 10 {
       return None
    }
    Some(a + e)
});
r // =>
EOT
      :rust_feature => "#![feature(iterator_try_reduce)]",
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_reduce",
    },

    {
      :ruby_method => "sum",
      :rust_method => "sum",
      :ruby_example => %([5, 6, 7].sum # =>),
      :rust_example => %([5, 6, 7].iter().sum::<isize>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum",
    },
    {
      :ruby_method => "inject(1, :*)",
      :rust_method => "product",
      :ruby_example => %([5, 6, 7].inject(1, :*) # =>),
      :rust_example => %([5, 6, 7].iter().product::<isize>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product",
    },

    {
      :ruby_method => "all?",
      :rust_method => "all",
      :ruby_example => %([5, 6, 7].all? { |e| e >= 0 } # =>),
      :rust_example => %([5, 6, 7].iter().all(|&e| e >= 0) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all",
    },

    {
      :ruby_method => "any?",
      :rust_method => "any",
      :ruby_example => %([5, 6, 7].any? { |e| e >= 6 } # =>),
      :rust_example => %([5, 6, 7].iter().any(|&e| e >= 6) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any",
    },

    {
      :ruby_method => "find",
      :rust_method => "find",
      :ruby_example => %([5, 6, 7].find { |e| e == 6 } # =>),
      :rust_example => %([5, 6, 7].iter().find(|&&e| e == 6) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find",
    },

    {
      :ruby_method => "index {}",
      :rust_method => "position",
      :ruby_example => %([5, 6, 5].index { |e| e == 5 } # =>),
      :rust_example => %([5, 6, 5].iter().position(|&e| e == 5) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.position",
    },

    {
      :ruby_method => "rindex {}",
      :rust_method => "rposition",
      :ruby_example => %([5, 6, 5].rindex { |e| e == 5 } # =>),
      :rust_example => %([5, 6, 5].iter().rposition(|&e| e == 5) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition",
    },

#     ################################################################################
    {
      :ruby_method   => "<=>",
      :rust_method   => "cmp",
      :ruby_example    => %([5, 6] <=> [5, 6] # =>),
      :rust_example    => %([5, 6].iter().cmp([5, 6].iter()) // =>),
      :desc         => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp",
    },
    {
      :ruby_method   => "?",
      :rust_method   => "cmp_by",
      :ruby_example    => %(),
      :rust_example    => %([5, 6].iter().cmp_by(&[5, 6], |&a, &b| a.cmp(&b)) // =>),
      :rust_feature => "#![feature(iter_order_by)]",
      :desc         => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp_by",
    },
    {
      :ruby_method   => "<=>",
      :rust_method   => "partial_cmp",
      :ruby_example    => %([5, 6] <=> [5, 6] # =>),
      :rust_example    => %([5, 6].iter().partial_cmp([5, 6].iter()) // =>),
      :desc         => "Some でラップしてある",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp",
    },

    {
      :ruby_method   => "?",
      :rust_method   => "partial_cmp_by",
      :ruby_example    => %(),
      :rust_example    => %([5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)) // =>),
      :rust_feature => "#![feature(iter_order_by)]",
      :desc         => "Some でラップしてある",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp_by",
    },
#     ################################################################################

     ################################################################################

#     {
#       :hidden => true,
#       :ruby_method => "?",
#       :rust_method => "by_ref",
#       :ruby_example => <<~EOT,
# EOT
#       :rust_example => <<~EOT,
#     let mut it = [5, 6, 7].iter();
#     it.by_ref().collect::<Vec<_>>() // =>
#     // by_ref() がなければ次で失敗する
#     it                              // =>
# EOT
#       :desc => nil,
#       :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.by_ref",
#       :ref_url => nil,
#     },
#
#     ################################################################################

#     {
#       :ruby_method => "first",
#       :rust_method => "first",
#       :ruby_example => <<~EOT,
# [5, 6, 7].first  # =>
# EOT
#
#       :rust_example => <<~EOT,
# [5, 6, 7].first()  // =>
# EOT
#       :desc => "iter().last() はあるのに iter().first() はない",
#       :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.first",
#     },

    {
      :ruby_method => "last",
      :rust_method => "last",
      :ruby_example => <<~EOT,
[5, 6, 7].last              # =>
[5, 6, 7].each.entries.last # =>
EOT

      :rust_example => <<~EOT,
[5, 6, 7].last()        // =>
[5, 6, 7].iter().last() // =>
EOT
      :desc => "iter().last() はあるのに iter().first() はない。単に最後が欲しいなら iter() を仲介しなくてよい。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last",
    },

    {
      :ruby_method => "max",
      :rust_method => "max",
      :ruby_example => %([5, 6, -7].max # =>),
      :rust_example => %([5_isize, 6, -7].iter().max() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max",
    },
    {
      :ruby_method => "max_by",
      :rust_method => "max_by_key",
      :ruby_example => %([5, 6, -7].max_by(&:abs) # =>),
      :rust_example => %([5_isize, 6, -7].iter().max_by_key(|e| e.abs()) // =>),
      :desc => "Rust は元の値を key と呼んでいる",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key",
    },
    {
      :ruby_method => "max {}",
      :rust_method => "max_by",
      :ruby_example => %([5, 6, -7].max { |a, b| a <=> b }.max # =>),
      :rust_example => %([5_isize, 6, -7].iter().max_by(|a, b| a.cmp(b)) // =>),
      :desc => "使いづらい",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by",
    },

    {
      :ruby_method => "min",
      :rust_method => "min",
      :desc => "使い方は max と同じ",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min",
    },
    {
      :ruby_method => "min_by",
      :rust_method => "min_by_key",
      :desc => "使い方は max_by_key と同じ",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key",
    },
    {
      :ruby_method => "min {}",
      :rust_method => "min_by",
      :desc => "使い方は max_by と同じ",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by",
    },

    {
      :ruby_method => "join + each ???",
      :rust_method => "intersperse",
      :ruby_example => nil,
      :rust_example => %(["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // =>),
      :rust_feature => "#![feature(iter_intersperse)]",
      :desc => "セパレータは毎回固定で良いとき用",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse",
    },

    {
      :ruby_method => "join + each ???",
      :rust_method => "intersperse_with",
      :ruby_example => nil,
      :rust_example => %(["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // =>),
      :rust_feature => "#![feature(iter_intersperse)]",
      :desc => "intersperse のクロージャ版",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with",
    },

    ################################################################################ イテレータ操作

    {
      :ruby_method => "chain",
      :rust_method => "chain",
      :ruby_example => %([5, 6].chain([7, 8]).entries # =>),
      :rust_example => %([5, 6].iter().chain([7, 8].iter()).collect::<Vec<_>>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain",
    },

    {
      :ruby_method => "next",
      :rust_method => "next",
      :ruby_example => <<~EOT,
       it = [5, 6].each
       it.next           # =>
       it.next           # =>
       it.next rescue $! # =>
     EOT
      :rust_example => <<~EOT,
       let mut it = [5, 6].iter();
       it.next() // =>
       it.next() // =>
       it.next() // =>
     EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#tymethod.next",
    },

    {
      :ruby_method => "peek",
      :rust_method => "peek",
      :ruby_example => <<~EOT,
      it = [5, 6, 7].each
      it.next  # =>
      it.peek  # =>
      it.next  # =>
    EOT
      :rust_example => <<~EOT,
      let mut it = [5, 6, 7].iter().peekable();
      it.next()  // =>
      it.peek()  // =>
      it.next()  // =>
    EOT
      :desc => "peekable しないと peek は使えない",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.peekable",
    },

    {
      :ruby_method => "?",
      :rust_method => "nth",
      :ruby_example => "",
      :rust_example => <<~EOT,
    let mut it = [5, 6, 7].iter();
    it.nth(1)  // =>
    it.nth(1)  // =>
    it.nth(1)  // =>
EOT
      :desc => "at(i) 相当かと思いきや内部で**ポインタを進めてから**その位置の値を返すので注意",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth",
    },

    {
      :ruby_method => "?",
      :rust_method => "advance_by",
      :ruby_example => <<~EOT,
      it = [5, 6, 7].to_enum
      2.times { it.next }
      it.next # =>
EOT
      :rust_example => <<~EOT,
    let mut it = [5, 6, 7].iter();
    it.advance_by(2) // =>
    it.next()        // =>
EOT
      :rust_feature => "#![feature(iter_advance_by)]",
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.advance_by",
    },

    {
      :ruby_method => "?",
      :rust_method => "fuse",
      :ruby_example => nil,
      :rust_example => <<~EOT,
      struct Foo {
          counter: i32,
      }

      // カウンタが偶数のときだけその値を返す
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
      :desc => "fuse を呼んだ後、最初の None が来てから None を継続する。どういうときに使うのかはわからない。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse",
    },

    {
      :ruby_method => "?",
      :rust_method => "size_hint",
      :ruby_example => <<~EOT,
     EOT
      :rust_example => <<~EOT,
      let it = ["a", "b", "c"].iter();
      it.size_hint() // =>
     EOT
      :desc => "イテレータの残りの長さの境界(下限と上限)を返す(？)",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint",
    },

    #     ################################################################################

    {
      :ruby_method => "?",
      :rust_method => "eq ne lt le gt ge",
      :ruby_example => nil,
      :rust_example => <<~EOT,
      [1].iter().eq([1, 2].iter())  // =>
      [1].iter().ne([1, 2].iter())  // =>
      [1].iter().lt([1, 2].iter())  // =>
      [1].iter().le([1, 2].iter())  // =>
      [1].iter().gt([1, 2].iter())  // =>
      [1].iter().ge([1, 2].iter())  // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.ge",
    },

    {
      :ruby_method => "?",
      :rust_method => "eq_by",
      :ruby_example => <<~EOT,
      [2, 3].collect { |e| e + e } == [4, 6]                     # =>
      [2, 3].each.with_index.all? { |e, i| e + e == [4, 6][i] }  # =>

      it = [4, 6].to_enum
      [2, 3].all? { |a; b| b = it.next; a + a == b }             # =>
EOT
      :rust_example => <<~EOT,
      [2, 3].iter().eq_by(&[4, 6], |&a, &b| a + a == b) // =>
EOT
      :rust_feature => "#![feature(iter_order_by)]",
      :desc => "これは使いづらい",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq_by",
    },

#     ################################################################################

    {
      :ruby_method => "?",
      :rust_method => "is_sorted",
      :ruby_example => <<~EOT,
      v = [5, 6, 7]
      v == v.sort # =>
EOT
      :rust_example => %([5, 6, 7].iter().is_sorted() // =>),
      :rust_feature => "#![feature(is_sorted)]",
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted",
    },
    {
      :ruby_method => "?",
      :rust_method => "is_sorted_by",
      :ruby_example => <<~EOT,
      v = [5, 6, 7]
      v == v.sort { |a, b| a <=> b } # =>
EOT
      :rust_example => %([5, 6, 7].iter().is_sorted_by(|a, b| a.partial_cmp(b)) // =>),
      :rust_feature => "#![feature(is_sorted)]",
      :desc => "partial_cmp は Some(Less) みたいなのを返す",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by",
    },
    {
      :ruby_method => "?",
      :rust_method => "is_sorted_by_key",
      :ruby_example => <<~EOT,
      v = [5, -6, 7]
      v == v.sort_by(&:abs) # =>
EOT
      :rust_example => %([5_isize, -6, 7].iter().is_sorted_by_key(|e| e.abs()) // =>),
      :rust_feature => "#![feature(is_sorted)]",
      :desc => "",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by_key",
    },
  ],
}
