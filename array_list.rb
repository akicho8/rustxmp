# https://doc.rust-lang.org/std/vec/struct.Vec.html
# https://doc.rust-lang.org/std/iter/trait.Iterator.html

ARRAY_LIST = {
  :name => "array",
  :list => [
    #   {
    #     :ruby_method => "new",
    #     :rust_method => "new",
    #     :ruby_example => <<~EOT,
    # Array.new # =>
    #      EOT
    #     :rust_example => <<~EOT,
    # Vec::<isize>::new() // =>
    #      EOT
    #     :rust_feature => nil,
    #     :mutable => true,
    # :desc => nil,
    #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.new",
    #   },
    {
      :ruby_method => "length",
      :rust_method => "len",
      :ruby_example => <<~EOT,
      [5, 6].length  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6];
      v.len()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len",
    },
    {
      :ruby_method => "count",
      :rust_method => "iter.count",
      :ruby_example => <<~EOT,
[5, 6].count  # =>
EOT
      :rust_example => <<~EOT,
[5, 6].iter().count() // =>
EOT
      :desc => "クロージャは渡せない",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count",
    },

    {
      :ruby_method => "tally",
      :rust_method => "iter.counts",
      :ruby_example => <<~EOT,
[5, 5, 6].tally  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 5, 6].iter().counts()  // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.counts",
      :build_by => :cargo,
    },
    {
      :ruby_method => "map.tally",
      :rust_method => "iter.counts_by",
      :ruby_example => <<~EOT,
[5, 5, 6].map { |e| e }.tally  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 5, 6].iter().counts_by(|e| e)  // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.counts_by",
      :build_by => :cargo,
    },

    {
      :ruby_method => "uniq.size <= 1",
      :rust_method => "iter.all_equal",
      :ruby_example => <<~EOT,
[5, 5, 5].uniq.size <= 1  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 5, 5].iter().all_equal()  // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.all_equal",
      :build_by => :cargo,
    },
    {
      :ruby_method => "v == v.uniq",
      :rust_method => "iter.all_unique",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v == v.uniq  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().all_unique()  // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.all_unique",
      :build_by => :cargo,
    },

    {
      :ruby_method => "transpose",
      :rust_method => "iter.multiunzip",
      :ruby_example => <<~EOT,
[[1, 2, 3], [4, 5, 6], [7, 8, 9]].transpose # =>
EOT
      :rust_example => <<~EOT,
    use itertools::Itertools;
    let v = vec![(1, 2, 3), (4, 5, 6), (7, 8, 9)];
    let (a, b, c): (Vec<_>, Vec<_>, Vec<_>) = v.into_iter().multiunzip();
    a // =>
    b // =>
    c // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.multiunzip",
      :build_by => :cargo,
    },

    {
      :ruby_method => "include?",
      :rust_method => "contains",
      :ruby_example => <<~EOT,
[5, 6, 7].include?(6)  # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7].contains(&6)  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "この `&` はどういうことだろう",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains",
    },
    {
      :ruby_method => "slice",
      :rust_method => "get",
      :ruby_example => <<~EOT,
v = [5, 6, 7, 8]
v.slice(1)     # =>
v.slice(1..2)  # =>
v[1]           # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8];
      v.get(1)      // =>
      v.get(1..=2)  // =>
      v[1]          // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "何かやるとすぐ元を破壊しようとするメソッドが多いなかで get は安全かつ範囲も使えるので便利。ただしマイナスを指定しても末尾からとはならない。整数でアクセスするときだけ get(i) を [i] にすれば Option 型にならない。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get",
    },
    {
      :ruby_method => "first",
      :rust_method => "first",
      :ruby_example => <<~EOT,
[5, 6, 7].first   # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7].first() // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first",
    },
    {
      :ruby_method => "first(n)",
      :rust_method => "get(..n)",
      :ruby_example => <<~EOT,
[5, 6, 7].first(2)  # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7].get(..2)  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get",
    },
    {
      :ruby_method => "take(n)",
      :rust_method => "get(..n)",
      :ruby_example => <<~EOT,
[5, 6, 7, 8, 9].take(2)  # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7, 8, 9].get(..2) // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get",
    },
    {
      :ruby_method => "take(n)",
      :rust_method => "iter.take(n)",
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
      :ruby_method => "[...-n]",
      :rust_method => "iter.dropping_back(n)",
      :ruby_example => <<~EOT,
[5, 6, 7, 8, 9][...-2]  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().dropping_back(2) // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.dropping_back",
      :build_by => :cargo,
    },
    {
      :ruby_method => "take_while",
      :rust_method => "iter.take_while",
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
      :ruby_method => "last",
      :rust_method => "last",
      :ruby_example => <<~EOT,
[5, 6, 7].last   # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7].last() // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last",
    },
    {
      :ruby_method => "last",
      :rust_method => "iter.last",
      :ruby_example => <<~EOT,
[5, 6, 7].each.entries.last # =>
EOT

      :rust_example => <<~EOT,
[5, 6, 7].iter().last() // =>
EOT
      :desc => "`iter().last()` はあるのに `iter().first()` はない",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last",
    },
    {
      :ruby_method => "last(n)",
      :rust_method => "v.get((v.len() - n)..)",
      :ruby_example => <<~EOT,
[5, 6, 7].last(2)  # =>
  EOT
      :rust_example => <<~EOT,
let v = vec![5, 6, 7];
v.get((v.len() - 2)..)   // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "専用メソッドがありそうだが見つからなかった。引数は `v.len() - 2..` と書いてもいいけど読み間違いそう。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get",
    },
    {
      :ruby_method => "clear",
      :rust_method => "clear",
      :ruby_example => <<~EOT,
v = [5, 6]
v.clear
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6];
      v.clear();
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear",
    },
    {
      :ruby_method => "empty?",
      :rust_method => "is_empty",
      :ruby_example => <<~EOT,
[].empty? # =>
  EOT
      :rust_example => <<~EOT,
Vec::<isize>::new().is_empty() // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty",
    },
    {
      :ruby_method => "drop(n)",
      :rust_method => "get(n..)",
      :ruby_example => <<~EOT,
[5, 6, 7, 8, 9].drop(2)  # =>
  EOT
      :rust_example => <<~EOT,
vec![5, 6, 7, 8, 9].get(2..)  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get",
    },
    {
      :ruby_method => "drop(n)",
      :rust_method => "iter.dropping",
      :ruby_example => <<~EOT,
[5, 6, 7, 8, 9].drop(2)  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().dropping(2) // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.dropping",
      :build_by => :cargo,
    },
    {
      :ruby_method => "drop(n) の破壊版",
      :rust_method => "split_off(n)",
      :ruby_example => <<~EOT,
v = [5, 6, 7, 8, 9]
r = v.slice!(2..)
r  # =>
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7, 8, 9];
      let r = v.split_off(2);
      r  // =>
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "メソッド名がイケてない。off が何の略なのかは不明。offset ？",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off",
    },
    {
      :ruby_method => "drop(n)",
      :rust_method => "iter.skip(n)",
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
      :rust_method => "iter.skip_while",
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
      :ruby_method => "[v.take(n), v.drop(n)]",
      :rust_method => "split_at(n)",
      :ruby_example => <<~EOT,
v = [5, 6, 7, 8, 9]
n = 2
[v.take(n), v.drop(n)]  # =>

v.partition.with_index { |_, i| i < n } # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8, 9];
      let (a, b) = v.split_at(2);
      a  // =>
      b  // =>
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at",
    },
    {
      :ruby_method => "push",
      :rust_method => "push",
      :ruby_example => <<~EOT,
v = [5, 6]
v.push(7)
v # =>
  EOT
      :rust_example => <<~EOT,
let mut v = vec![5, 6];
v.push(7);
v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.push",
    },
    {
      :ruby_method => "a.concat(b.slice!(0..))",
      :rust_method => "append",
      :ruby_example => <<~EOT,
a = [5, 6]
b = [7, 8]
a.concat(b.slice!(0..))
a # => [5, 6, 7, 8]
b # => []
  EOT
      :rust_example => <<~EOT,
      let mut a = vec![5, 6];
      let mut b = vec![7, 8];
      a.append(&mut b);
      a  // =>
      b  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "push の別名ではない。中身が**移動する**ので注意しよう。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append",
    },
    {
      :ruby_method => "pop",
      :rust_method => "pop",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.pop  # =>
v      # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.pop()  // =>
      v        // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.pop",
    },
    {
      :ruby_method => "shift",
      :rust_method => "take_first",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.shift  # =>
v        # =>
  EOT
      :rust_example => <<~EOT,
      let mut v: &[_] = &[5, 6, 7];
      v.take_first()  // =>
      v               // =>
  EOT
      :rust_feature => "#![feature(slice_take)]",
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_first",
    },
    {
      :ruby_method => "pop",
      :rust_method => "take_last",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.pop    # =>
v        # =>
  EOT
      :rust_example => <<~EOT,
      let mut v: &[_] = &[5, 6, 7];
      v.take_last()  // =>
      v              // =>
  EOT
      :rust_feature => "#![feature(slice_take)]",
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_last",
    },
    {
      :ruby_method => "unshift(v)",
      :rust_method => "insert(0, v)",
      :ruby_example => <<~EOT,
      v = [6, 7]
      v.unshift(5)
      v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![6, 7];
      v.insert(0, 5);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "insert で代用しよう",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert",
    },
    {
      :ruby_method => "rotate!(n)",
      :rust_method => "rotate_left(n)",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.rotate!(1)
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.rotate_left(1);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left",
    },
    {
      :ruby_method => "rotate!(-n)",
      :rust_method => "rotate_right(n)",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.rotate!(-1)
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.rotate_right(1);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right",
    },
    {
      :ruby_method => "reverse",
      :rust_method => "iter.rev",
      :ruby_example => %([5, 6, 7].reverse # =>),
      :rust_example => <<~EOT,
[5, 6, 7].iter().rev().collect::<Vec<_>>() // =>
EOT
      :desc => "Vec 自体に reverse があるけど破壊してしまう。iter 経由の rev は破壊しない。名前は合わせてほしかった。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev",
    },
    {
      :ruby_method => "reverse!",
      :rust_method => "reverse",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.reverse!
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.reverse();
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "破壊しないのが欲しかった",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.reverse",
    },
    {
      :ruby_method => "fill",
      :rust_method => "fill",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.fill(8)
v # => [8, 8, 8]
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.fill(8);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill",
    },
    {
      :ruby_method => "fill {}",
      :rust_method => "fill_with",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.fill { 8 }
v # => [8, 8, 8]
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.fill_with(|| 8);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "引数の形式が厳密であるがゆえに少し違うだけで仕方なく別のメソッドを用意しているように感じる",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with",
    },
    {
      :ruby_method => "v * n",
      :rust_method => "v.repeat(n)",
      :ruby_example => <<~EOT,
[5, 6] * 2  # =>
  EOT
      :rust_example => <<~EOT,
[5, 6].repeat(2)  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.repeat",
    },
    {
      :ruby_method => "delete_at",
      :rust_method => "remove",
      :ruby_example => <<~EOT,
      v = [5, 6, 7, 8]
      v.delete_at(1)  # =>
      v               # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7, 8];
      v.remove(1)   // =>
      v             // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "前に詰めるので最悪 O(n) かかる",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove",
    },
    {
      :ruby_method => "v[i] = v.pop",
      :rust_method => "swap_remove(i)",
      :ruby_example => <<~EOT,
class Array
  def swap_remove(i)
    self[i].tap do
      self[i] = pop
    end
  end
end

v = [5, 6, 7, 8]
v.swap_remove(1)  # =>
v                 # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7, 8];
      v.swap_remove(1)  // =>
      v                 // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "指定の位置に最後の要素を持ってくる。詰める処理を省けるので O(1) で消せる。順序を気にしないとき用。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove",
    },
    {
      :ruby_method => "insert",
      :rust_method => "insert",
      :ruby_example => <<~EOT,
      v = [5, 7]
      v.insert(1, 6)
      v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 7];
      v.insert(1, 6);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert",
    },
    {
      :ruby_method => "map",
      :rust_method => "iter.map",
      :ruby_example => <<~EOT,
[5, 6].map { |e| e * 10 }       # =>
[5, 6].lazy.map { |e| e * 10 }  # =>
EOT
      :rust_example => <<~EOT,
[5, 6].iter().map(|e| e * 10).collect::<Vec<_>>() // =>
[5, 6].iter().map(|e| e * 10)                     // =>
EOT
      :desc => <<~EOT,
元を破壊しないので使いやすい。
他の iter 経由のメソッドもだけど繰り返し処理は collect() などが呼ばれるまで評価されないので正確には lazy.map の方が似ている(たぶん)。
EOT
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map",
    },
    {
      :ruby_method => "flat_map",
      :rust_method => "iter.flat_map",
      :ruby_example => %([[5, 6], [7, 8]].flat_map(&:itself) # =>),
      :rust_example => %([[5, 6], [7, 8]].iter().flat_map(|e| e).collect::<Vec<_>>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map",
    },
    {
      :ruby_method => "map の何か渡せる版",
      :rust_method => "iter.scan",
      :ruby_example => <<~EOT,
EOT
      :rust_example => <<~EOT,
      let it = [2, 3].iter().scan(10, |a, &e| {
          *a += e;
          Some(*a)
      });
      it.collect::<Vec<_>>() // =>
EOT
      :desc => "書き方は inject に似ているけど map のように配列を返す。each_with_object の代用としても使えそう。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan",
    },
    {
      :ruby_method => "find_all",
      :rust_method => "iter.filter",
      :ruby_example => %([4, 5, 6].find_all { |e| e % 2 == 0 } # =>),
      :rust_example => %([4, 5, 6].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // =>),
      :desc => "元を破壊しないので retain より使いやすい",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter",
    },
    {
      :ruby_method => "reject",
      :rust_method => "iter.filter(|| !)",
      :ruby_example => %([4, 5, 6].reject { |e| e % 2 == 0 } # =>),
      :rust_example => %([4, 5, 6].iter().filter(|&e| !(e % 2 == 0)).collect::<Vec<_>>() // =>),
      :desc => "filter の逆版は無いっぽいので filter のクロージャで返す値を反転しよう",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter",
    },
    {
      :ruby_method => "filter_map",
      :rust_method => "iter.filter_map",
      :ruby_example => <<~EOT,
[5, 6, 7, 8].filter_map { |e| e * 10 if e.even? } # =>
[5, 6, 7, 8].find_all(&:even?).map { |e| e * 10 } # =>
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
      :desc => "2つのことを同時に行うメソッドは混乱してしまう。よっぽのどのことがなければ filter + map を使おう。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter_map",
    },
    {
      :ruby_method => "take_while + collect",
      :rust_method => "iter.map_while",
      :ruby_example => <<~EOT,
[6, 6, 7, 6].take_while(&:even?).collect { |e| e * 10 } # =>
EOT
      :rust_example => <<~EOT,
      let it = [6, 6, 7, 6].iter().map_while(|&e| {
          if e % 2 == 0 {
              Some(e * 10)
          } else {
              None
          }
      });
      it.collect::<Vec<_>>() // =>

      // 混乱しにくい書き方
      [6, 6, 7, 6].iter().take_while(|&e| e % 2 == 0).map(|e| e * 10).collect::<Vec<_>>() // =>
EOT
      :desc => "filter_map の先頭から続く有効なものだけ版。take_while + map の方がわかりやすい。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while",
    },
    {
      :ruby_method => "find して何か",
      :rust_method => "iter.find_map",
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
      :ruby_method => "select!",
      :rust_method => "retain",
      :ruby_example => <<~EOT,
      v = [5, 6, 7, 8]
      v.select! { |e| e >= 7 }
      v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7, 8];
      v.retain(|&e| e >= 7);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "retain の意味は「保持」",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain",
    },
    {
      :ruby_method => "reject!",
      :rust_method => "retain(|| !)",
      :ruby_example => <<~EOT,
      v = [5, 6, 7, 8]
      v.reject! { |e| e >= 7 }
      v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7, 8];
      v.retain(|&e| !(e >= 7));
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "retain の逆版は無いっぽいので retain のクロージャで返す値を反転しよう",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain",
    },

    {
      :ruby_method => "select! しつつ要素も更新",
      :rust_method => "retain_mut",
      :ruby_example => <<~EOT,
# おすすめしない書き方です
v = ["a", "b", "c"]
v.select! do |e|
  if e == "b" || e == "c"
    if e == "b"
      e.upcase!
    end
    true
  end
end
v  # =>
  EOT
      :rust_example => <<~EOT,
    let mut v = vec![String::from("a"), String::from("b"), String::from("c")];
    v.retain_mut(|e| {
        if e == "b" || e == "c" {
            if e == "b" {
                *e = e.to_uppercase();
            }
            true
        } else {
            false
        }
    });
    v  // =>
  EOT
      :rust_feature => "#![feature(vec_retain_mut)]",
      :mutable => true,
      :desc => "よっぽどのことがなければ集めるのと変更するのは別々に書いた方がいいと思う",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain_mut",
    },

    {
      :ruby_method => "uniq",
      :rust_method => "iter.unique",
      :ruby_example => <<~EOT,
[5, 6, 6, 7].uniq # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 6, 7].iter().unique().collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.unique",
      :build_by => :cargo,
    },
    {
      :ruby_method => "uniq {}",
      :rust_method => "iter.unique_by",
      :ruby_example => <<~EOT,
[5, 6, 6, 7].uniq { |e| e } # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 6, 7].iter().unique_by(|&e| e).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.unique_by",
      :build_by => :cargo,
    },

    {
      :ruby_method => "all?",
      :rust_method => "iter.all",
      :ruby_example => %([5, 6, 7].all? { |e| e >= 0 } # =>),
      :rust_example => %([5, 6, 7].iter().all(|&e| e >= 0) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all",
    },

    {
      :ruby_method => "any?",
      :rust_method => "iter.any",
      :ruby_example => %([5, 6, 7].any? { |e| e >= 6 } # =>),
      :rust_example => %([5, 6, 7].iter().any(|&e| e >= 6) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any",
    },

    {
      :ruby_method => "one? && first",
      :rust_method => "iter.at_most_one",
      :ruby_example => <<~EOT,
module Enumerable
  def at_most_one
    one? && first
  end
end

[5, 6].at_most_one # =>
[5].at_most_one    # =>
[].at_most_one     # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().at_most_one()           // =>
[5].iter().at_most_one()                 // =>
Vec::<isize>::new().iter().at_most_one() // =>
EOT
      :desc => "at most one の意味は「せいぜい1つ」",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.at_most_one",
      :build_by => :cargo,
    },

    {
      :ruby_method => "find",
      :rust_method => "iter.find",
      :ruby_example => %([5, 6, 7].find { |e| e == 6 } # =>),
      :rust_example => %([5, 6, 7].iter().find(|&&e| e == 6) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find",
    },

    {
      :ruby_method => "find || first",
      :rust_method => "iter.find_or_first",
      :ruby_example => <<~EOT,
module Enumerable
  def find_or_first(&block)
    find(&block) || first
  end
end

[5, 6, 7].find_or_first { |e| e == 6 } # =>
[5, 6, 7].find_or_first { |e| e == 0 } # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().find_or_first(|&&e| e == 6) // =>
[5, 6, 7].iter().find_or_first(|&&e| e == 0) // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_or_first",
      :build_by => :cargo,
    },

    {
      :ruby_method => "find || last",
      :rust_method => "iter.find_or_last",
      :ruby_example => <<~EOT,
module Enumerable
  def find_or_last(&block)
    find(&block) || last
  end
end

[5, 6, 7].find_or_last { |e| e == 6 } # =>
[5, 6, 7].find_or_last { |e| e == 0 } # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().find_or_last(|&&e| e == 6) // =>
[5, 6, 7].iter().find_or_last(|&&e| e == 0) // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_or_last",
      :build_by => :cargo,
    },

    {
      :ruby_method => "index {}",
      :rust_method => "iter.position",
      :ruby_example => %([5, 6, 5].index { |e| e == 5 } # =>),
      :rust_example => %([5, 6, 5].iter().position(|&e| e == 5) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.position",
    },

    {
      :ruby_method => "rindex {}",
      :rust_method => "iter.rposition",
      :ruby_example => %([5, 6, 5].rindex { |e| e == 5 } # =>),
      :rust_example => %([5, 6, 5].iter().rposition(|&e| e == 5) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition",
    },

    {
      :ruby_method => "?",
      :rust_method => "iter.find_position",
      :ruby_example => <<~EOT,
module Enumerable
  def find_position(&block)
    if i = find_index(&block)
      [i, self[i]]
    end
  end
end

[5, 6, 7].find_position { |e| e > 5 } # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().find_position(|&&e| e > 5) // =>
EOT
      :desc => "値も返す",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_position",
      :build_by => :cargo,
    },

    {
      :ruby_method => "inject(acc) {}",
      :rust_method => "iter.fold",
      :ruby_example => %([5, 6, 7].inject(0, :+) # =>),
      :rust_example => %([5, 6, 7].iter().fold(0, |a, e| a + e) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold",
    },

    {
      :ruby_method => "inject(acc) { break }",
      :rust_method => "iter.try_fold",
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
      :ruby_method => "inject {}",
      :rust_method => "iter.reduce",
      :ruby_example => %([5, 6, 7].inject(:+) # =>),
      :rust_example => %(vec![5, 6, 7].into_iter().reduce(|a, e| a + e) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce",
    },

    {
      :ruby_method => "inject { break }",
      :rust_method => "iter.try_reduce",
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
      :rust_method => "iter.sum",
      :ruby_example => <<~EOT,
[5, 6, 7].sum # =>
[].sum        # =>
EOT
      :rust_example => <<~EOT,
[5, 6, 7].iter().sum::<isize>()  // =>
[].iter().sum::<isize>()         // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum",
    },
    {
      :ruby_method => "inject(:+)",
      :rust_method => "ter.sum1",
      :ruby_example => <<~EOT,
[5, 6, 7].inject(:+) # =>
[].inject(:+)        # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().sum1::<isize>() // =>
[].iter().sum1::<isize>()        // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.sum1",
      :build_by => :cargo,
    },
    {
      :ruby_method => "inject(1, :*)",
      :rust_method => "iter.product",
      :ruby_example => <<~EOT,
[5, 2, 10].inject(1, :*) # =>
[].inject(1, :*)         # =>
EOT
      :rust_example => <<~EOT,
[5, 2, 10].iter().product::<isize>() // =>
[].iter().product::<isize>()         // =>
EOT
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product",
    },
    {
      :ruby_method => "inject(:*)",
      :rust_method => "ter.product1",
      :ruby_example => <<~EOT,
[5, 2, 10].inject(:*) # =>
[].inject(:*)         # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 2, 10].iter().product1::<isize>() // =>
[].iter().product1::<isize>()         // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.product1",
      :build_by => :cargo,
    },

    {
      :ruby_method => "max",
      :rust_method => "iter.max",
      :ruby_example => %([5, 6, -7].max # =>),
      :rust_example => %([5_isize, 6, -7].iter().max() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max",
    },
    {
      :ruby_method => "max_by",
      :rust_method => "iter.max_by_key",
      :ruby_example => %([5, 6, -7].max_by(&:abs) # =>),
      :rust_example => %([5_isize, 6, -7].iter().max_by_key(|e| e.abs()) // =>),
      :desc => "Rust は元の値を key と呼んでいる",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key",
    },
    {
      :ruby_method => "max {}",
      :rust_method => "iter.max_by",
      :ruby_example => %([5, 6, -7].max { |a, b| a <=> b } # =>),
      :rust_example => %([5_isize, 6, -7].iter().max_by(|a, b| a.cmp(b)) // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by",
    },
    {
      :ruby_method => "index(max)",
      :rust_method => "iter.position_max",
      :ruby_example => <<~EOT,
module Enumerable
  def position_max
    index(max)
  end
end

[5, 6, 7].position_max # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().position_max() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_max",
      :build_by => :cargo,
    },

    {
      :ruby_method => "min",
      :rust_method => "iter.min",
      :desc => "max の逆版",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min",
    },
    {
      :ruby_method => "min_by",
      :rust_method => "iter.min_by_key",
      :desc => "max_by_key の逆版",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key",
    },
    {
      :ruby_method => "min {}",
      :rust_method => "iter.min_by",
      :desc => "max_by の逆版",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by",
    },
    {
      :ruby_method => "index(min)",
      :rust_method => "iter.position_min",
      :ruby_example => <<~EOT,
EOT
      :rust_example => <<~EOT,
EOT
      :desc => "position_max の逆版",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_min",
      :build_by => :cargo,
    },

    ################################################################################

    {
      :ruby_method => "minmax",
      :rust_method => "iter.minmax",
      :ruby_example => <<~EOT,
[5, 6, 7].minmax  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
let r = [5, 6, 7].iter().minmax();
r  // =>

// 値を取り出す
let (min, max) = r.into_option().unwrap();
min  // =>
max  // =>
EOT
      :desc => "MinMaxResult 型から値を取り出す方法が難しかった",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.minmax",
      :build_by => :cargo,
    },
    {
      :ruby_method => "?",
      :rust_method => "iter.position_minmax",
      :ruby_example => <<~EOT,
module Enumerable
  def position_minmax
    [index(min), index(max)]
  end
end

[5, 6, 7].position_minmax # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().position_minmax() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_minmax",
      :build_by => :cargo,
    },

    ################################################################################

    {
      :ruby_method => "combination",
      :rust_method => "iter.combinations",
      :ruby_example => <<~EOT,
[5, 6, 7].combination(2).entries # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().combinations(2).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.combinations",
      :build_by => :cargo,
    },
    {
      :ruby_method => "permutation",
      :rust_method => "iter.permutations",
      :ruby_example => <<~EOT,
[5, 6, 7].permutation(2).entries # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().permutations(2).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.permutations",
      :build_by => :cargo,
    },
    {
      :ruby_method => "combination の重ね掛け",
      :rust_method => "iter.powerset",
      :ruby_example => <<~EOT,
module Enumerable
  def powerset
    (0..size).collect_concat do |i|
      combination(i).entries
    end
  end
end

[5, 6, 7].powerset # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().powerset().collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.powerset",
      :build_by => :cargo,
    },

    ################################################################################

    {
      :ruby_method => "each_cons(n)",
      :rust_method => "windows(n)",
      :ruby_example => <<~EOT,
[5, 6, 7, 8].each_cons(2).entries  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8];
      v.windows(2).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "これほど検索しづらいメソッド名はないかもしれない",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows",
    },

    {
      :ruby_method => "each_cons 個数で指定しない",
      :rust_method => "iter.tuple_windows",
      :ruby_example => <<~EOT,
[5, 6, 7, 8].each_cons(2).entries # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7, 8].iter().tuple_windows::<(_, _)>().collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#tuple_windows",
      :build_by => :cargo,
    },
    {
      :ruby_method => "each_cons 一周する",
      :rust_method => "iter.circular_tuple_windows",
      :ruby_example => <<~EOT,
module Enumerable
  def circular_tuple_windows(n)
    size.times.collect do |i|
      n.times.collect { |j| at((i + j).modulo(size)) }
    end
  end
end

[5, 6, 7].circular_tuple_windows(2) # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().circular_tuple_windows::<(_, _)>().collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#circular_tuple_windows",
      :build_by => :cargo,
    },
    {
      :ruby_method => "each_cons 余り除去",
      :rust_method => "iter.tuples",
      :ruby_example => <<~EOT,
module Enumerable
  def tuples(n)
    take((size / n) * n).each_slice(n)
  end
end

[5, 6, 7, 8, 9].tuples(2).to_a # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().tuples::<(_, _)>().collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#tuples",
      :build_by => :cargo,
    },

    {
      :ruby_method => "chunk",
      :rust_method => "group_by",
      :ruby_example => <<~EOT,
      [5, 6, 6, 5].chunk(&:itself).collect(&:last) # =>
  EOT
      :rust_example => <<~EOT,
      [5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => "#![feature(slice_group_by)]",
      :mutable => false,
      :desc => "メソッド名がイケてない。全体を見てグループ化してないのでせめて slice_group_by としてほしかった。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by",
    },
    {
      :ruby_method => "partition",
      :rust_method => "iter.partition",
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
      :ruby_method => "partition + map",
      :rust_method => "iter.partition_map",
      :ruby_example => <<~EOT,
even, odd = [5, 6, 7, 8].partition(&:even?)
even                       # =>
odd.collect { |e| e * 2 }  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
use itertools::Either;
let (even, odd): (Vec<_>, Vec<_>) = [5, 6, 7, 8].iter().partition_map(|&e| {
    if e % 2 == 0 {
        Either::Left(e)
    } else {
        Either::Right(e * 2)
    }
});
even  // =>
odd   // =>
EOT
      :desc => "partition で bool 型を返すのではなく、Either::{Left, Right} で値をラップして返す。言い変えると「分けたあとで値を操作するのではなく」のではなく「分けながら値を操作する」。わかりにくいのでよっぽどのことがなければ別々に書いた方がよさそう。どうやらこれは partition_result のプラベート実装を汎用化したもので、ほぼ partition_result 専用と思われるので知らなくてもいいかもしれない。",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.partition_map",
      :build_by => :cargo,
    },

    {
      :ruby_method => "?",
      :rust_method => "iter.partition_result",
      :ruby_example => <<~EOT,
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;

// これが
use itertools::Either;
let v = vec![Ok(5), Err(6), Ok(7), Err(8)];
let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_map(|e| {
    match e {
        Ok(v)  => Either::Left(v),
        Err(v) => Either::Right(v),
    }
});
successes // =>
failures  // =>

// 簡潔に書ける
let v = vec![Ok(5), Err(6), Ok(7), Err(8)];
let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_result();
successes // =>
failures  // =>
EOT
      :desc => "Result 型の要素の配列を対象として Ok と Err に分ける。配列が要素に依存したメソッドを持っているのはいいのだろうか？",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.partition_result",
      :build_by => :cargo,
    },

    {
      :ruby_method => "partition の破壊版",
      :rust_method => "iter_mut.partition_in_place",
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
      :desc => <<~EOT,
これだけ特殊で元を破壊するので iter でははなく **iter_mut** を使わないといけない。
ドキュメントの「個数を返す」はピンとこないので「境界のインデックスを返す」と考えた方がよさそう。
EOT
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place",
    },
    {
      :ruby_method => "?",
      :rust_method => "iter.is_partitioned",
      :ruby_example => %(),
      :rust_example => <<~EOT,
      [6, 8, 5, 7, 9].iter().is_partitioned(|&e| e % 2 == 0) // =>
EOT
      :rust_feature => "#![feature(iter_is_partitioned)]",
      :desc => "partition_in_place を適用した結果と同じなら true",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned",
    },
    {
      :ruby_method => "each_slice",
      :rust_method => "chunks",
      :ruby_example => <<~EOT,
      [5, 6, 7, 8, 9].each_slice(2).entries  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8, 9];
      v.chunks(2).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "Rubyにも似た名前のメソッドがあって別の動作をすると混乱してしまう",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks",
    },
    {
      :ruby_method => "each_slice の末尾から版",
      :rust_method => "rchunks",
      :ruby_example => <<~EOT,
v = [5, 6, 7, 8, 9]
v.reverse.each_slice(2).collect(&:reverse)  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8, 9];
      v.rchunks(2).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rchunks",
    },
    {
      :ruby_method => "chunk",
      :rust_method => "split",
      :ruby_example => <<~EOT,
v = [5, 6, 0, 7, 8, 0, 9]
v.chunk { |e| e == 0 ? nil : true }.map(&:last) # =>

require "active_support/core_ext/array/grouping"
v.split(0) # =>

"5607809".split("0")  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.split(|&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "split の配列版風",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split",
    },
    {
      :ruby_method => "slice_after",
      :rust_method => "split_inclusive",
      :ruby_example => <<~EOT,
[5, 6, 0, 7, 8, 0, 9].slice_after { |e| e == 0 }.entries # => [[5, 6, 0], [7, 8, 0], [9]]
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "境界の値を含める版",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive",
    },
    {
      :ruby_method => "chunk の末尾から版",
      :rust_method => "rsplit",
      :ruby_example => <<~EOT,
v = [5, 6, 0, 7, 8, 0, 9]
v.reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit",
    },
    {
      :ruby_method => "split(?, n) の配列版風",
      :rust_method => "splitn(n, ||)",
      :ruby_example => <<~EOT,
"5607809".split("0", 2)  # =>

v = [5, 6, 0, 7, 8, 0, 9]
n = 2
v = v.slice_after { |e| e == 0 }
v = [
  *v.take(n - 1).collect { |e| e[..-2] },
  v.drop(n - 1).flatten(1),
]
v # => [[5, 6], [7, 8, 0, 9]]
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.splitn(2, |&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.splitn",
    },
    {
      :ruby_method => "?",
      :rust_method => "rsplitn",
      :ruby_example => <<~EOT,
"5607809".reverse.split("0", 2).collect(&:reverse)  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "splitn の末尾から版",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn",
    },
    {
      :ruby_method => "start_with? の配列版",
      :rust_method => "starts_with",
      :ruby_example => <<~EOT,
[5, 6, 7].first([5, 6].length) == [5, 6]  # =>
"567".start_with?("56")                   # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7].starts_with(&[5, 6])  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with",
    },
    {
      :ruby_method => "end_with? の配列版",
      :rust_method => "ends_with",
      :ruby_example => <<~EOT,
[5, 6, 7].last([6, 7].length) == [6, 7]  # =>
"567".end_with?("67")                    # =>
  EOT
      :rust_example => <<~EOT,
      [5, 6, 7].ends_with(&[6, 7])  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with",
    },
    {
      :ruby_method => "delete_prefix の配列版",
      :rust_method => "strip_prefix",
      :ruby_example => <<~EOT,
a = [5, 6, 7, 8]
b = [5, 6]
if a.first(b.size) == b
  a.drop(b.size)  # =>
end

"5678".delete_prefix("56")  # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7, 8].strip_prefix(&[5, 6])  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix",
    },
    {
      :ruby_method => "delete_suffix の配列版",
      :rust_method => "strip_suffix",
      :ruby_example => <<~EOT,
a = [5, 6, 7, 8]
b = [7, 8]
if a.last(b.size) == b
  a.take(a.size - b.size)      # =>
end

"5678".delete_suffix("78")      # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7, 8].strip_suffix(&[7, 8])  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix",
    },
    {
      :ruby_method => "slice!(...n) or slice!(n...)",
      :rust_method => "take",
      :ruby_example => <<~EOT,
      v = [5, 6, 7, 8, 9]
      v.slice!(...2) # =>
      v              # =>

      v = [5, 6, 7, 8, 9]
      v.slice!(2...) # =>
      v              # =>
  EOT
      :rust_example => <<~EOT,
      let mut v: &[_] = &[5, 6, 7, 8, 9];
      v.take(..2)  // =>
      v            // =>

      let mut v: &[_] = &[5, 6, 7, 8, 9];
      v.take(2..)  // =>
      v            // =>
  EOT
      :rust_feature => "#![feature(slice_take)]",
      :mutable => true,
      :desc => "破壊しないでほしいときは get を使おう。引数は範囲の片方しか指定しちゃいけない型なので 1..=2 とか書くとエラーになってしまう。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take",
    },
    {
      :ruby_method => "to_a",
      :rust_method => "to_vec",
      :ruby_example => <<~EOT,
[5, 6, 7].to_a  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7];
      v.to_vec()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.to_vec",
    },

    {
      :ruby_method => "join(sep) で文字列化",
      :rust_method => "iter.join",
      :ruby_example => <<~EOT,
[5, 6, 7].join("-") # =>
EOT
      :rust_example => <<~EOT,
// これは動くのに
["a", "b", "c"].join("-")  // =>

// これは動かない
// [5, 6, 7].join("-")

// でもこうやると動く
use itertools::Itertools;
[5, 6, 7].iter().join("-")  // =>
EOT
      :desc => "文字列の配列は join できる。しかし数値の配列は join できない。でも Itertools を入れると iter 経由で join できる。",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.join",
      :build_by => :cargo,
    },

    {
      :ruby_method => "collect.join",
      :rust_method => "iter.format_with",
      :ruby_example => <<~EOT,
[1.5, 1.5].collect { |e| "(%.f)" % e }.join("-") # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
format!("{}", [1.5, 1.5].iter().format_with("-", |e, f| f(&format_args!("({:.0})", e)))) // =>
EOT
      :desc => "format_with のときにはまだ文字列になっていない。format! を通したとき文字列になるっぽい。",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.format_with",
      :build_by => :cargo,
    },

    {
      :ruby_method => "collect.join の簡易版",
      :rust_method => "iter.format",
      :ruby_example => <<~EOT,
s = [1.5, 1.5].collect { |e| "%.f" % e }.join("-") # =>
"<\#{s}>"                                           # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
format!("<{:.0}>", [1.5, 1.5].iter().format("-")) // =>
EOT
      :desc => "実行順番がよくわからない",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.format",
      :build_by => :cargo,
    },

    {
      :ruby_method => "join(sep) ???",
      :rust_method => "join",
      :ruby_example => <<~EOT,
["a", "b", "c"].join("-")                                 # =>
[[4, 5], [6, 7], [8, 9]].zip([0].cycle).flatten(2)[..-2]  # =>
  EOT
      :rust_example => <<~EOT,
["a", "b", "c"].join("-")         // =>
[[4, 5], [6, 7], [8, 9]].join(&0) // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "よくわからない挙動をする。元が文字列でないと文字列にならないようだ。また整数には絶対 `&` をつけないといけなくて文字列なら `&` をつけてもつけなくてもよい理由もわからない。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join",
    },
    {
      :ruby_method => "join or flatten(1) ???",
      :rust_method => "concat",
      :ruby_example => <<~EOT,
      ["a", "b"].join             # =>
      [["a"], ["b"]].flatten(1)   # =>
      [[5, 6], [7, 8]].flatten(1) # =>
  EOT
      :rust_example => <<~EOT,
      ["a", "b"].concat()        // =>
      [["a"], ["b"]].concat()    // =>
      [[5, 6], [7, 8]].concat()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "どうなっているんだこれは。flatten(1) だけど文字列の配列なら join する(？)",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat",
    },

    {
      :ruby_method => "flatten(1)",
      :rust_method => "iter.flatten",
      :ruby_example => %([[5, 6], [7, 8]].flatten(1) # =>),
      :rust_example => %([[5, 6], [7, 8]].iter().flatten().collect::<Vec<_>>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten",
    },

    {
      :ruby_method => "sort",
      :rust_method => "iter.sorted",
      :ruby_example => <<~EOT,
[7, 6, 5].sort  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[7, 6, 5].iter().sorted().collect_vec()  // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.sorted",
      :build_by => :cargo,
    },

    {
      :ruby_method => "sort!",
      :rust_method => "sort",
      :ruby_example => <<~EOT,
v = [7, 6, 5]
v.sort!
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7, 6, 5];
      v.sort();
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "同じ値は並び変えないらしい。そこにこだわりがなければ sort_unstable の方を使おう。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort",
    },
    {
      :ruby_method => "sort! {}",
      :rust_method => "sort_by",
      :ruby_example => <<~EOT,
v = [7, 6, 5]
v.sort! { |a, b| a <=> b }
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7, 6, 5];
      v.sort_by(|a, b| a.cmp(b));
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by",
    },
    {
      :ruby_method => "sort {}",
      :rust_method => "iter.sorted_by",
      :ruby_example => <<~EOT,
[7, 6, 5].sort { |a, b| a <=> b }  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[7, 6, 5].iter().sorted_by(|a, b| a.cmp(b)).collect_vec()  // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.sorted_by",
      :build_by => :cargo,
    },

    {
      :ruby_method => "sort_by ブロック呼びすぎ版",
      :rust_method => "iter.sorted_by_key",
      :ruby_example => <<~EOT,
[7, -6, 5].sort_by(&:abs)  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
let mut c = 0;
[7_isize, -6, 5].iter().sorted_by_key(|&e| { c += 1; e.abs() }).collect::<Vec<_>>() // =>
c // =>
EOT
      :desc => "クロージャがめっちゃ呼ばれるので注意しよう",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.sorted_by_key",
      :build_by => :cargo,
    },

    {
      :ruby_method => "sort_by! ブロック呼びすぎ版",
      :rust_method => "sort_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7_isize, -6, 5];
      let mut c = 0;
      v.sort_by_key(|e| { c += 1; e.abs() });
      v  // =>
      c  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "値を参照するたびにクロージャが呼ばれるので注意しよう。sort_by_cached_key の方を使おう。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key",
    },

    {
      :ruby_method => "sort_by",
      :rust_method => "iter.sorted_by_cached_key",
      :ruby_example => <<~EOT,
[7, 6, 5].sort_by { |e| e }  # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[7, 6, 5].iter().sorted_by_cached_key(|&e| e).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.sorted_by_cached_key",
      :build_by => :cargo,
    },

    {
      :ruby_method => "sort_by!",
      :rust_method => "sort_by_cached_key",
      :ruby_example => <<~EOT,
      v = [7, 6, 5]
      v.sort_by! { |e| e }
      v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7, 6, 5];
      v.sort_by_cached_key(|&e| e);
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key",
    },
    {
      :ruby_method => "sort!",
      :rust_method => "sort_unstable",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7, 6, 5];
      v.sort_unstable();
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "sort_unstable 系は等しい要素も並び換えるけど sort より計算量が少ないらしい。等しい要素も並び換える点はRubyも同じはず。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable",
    },
    {
      :ruby_method => "sort! {}",
      :rust_method => "sort_unstable_by",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![6, 8, 7, 5];
      v.sort_unstable_by(|a, b| a.cmp(b));
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by",
    },
    {
      :ruby_method => "?",
      :rust_method => "sort_unstable_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7_isize, -6, 5];
      let mut c = 0;
      v.sort_unstable_by_key(|e| { c += 1; e.abs() });
      v  // =>
      c  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "クロージャが要素数よりも多く呼ばれるので注意",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by_key",
    },
    {
      :ruby_method => "?",
      :rust_method => "is_sorted",
      :ruby_example => <<~EOT,
EOT
      :rust_example => <<~EOT,
      [5, 6, 7].is_sorted()  // =>
  EOT
      :rust_feature => "#![feature(is_sorted)]",
      :mutable => false,
      :desc => "ソートしてあるか調べるぐらいならソートすればよくね？ って思うけど、利用する側でソート済みならソートを省略するように書けばトータルで計算量を減らせたりする場合があってそれを考慮して用意されているメソッドだろうか。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted",
    },
    {
      :ruby_method => "?",
      :rust_method => "is_sorted_by",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      [5, 6, 7].is_sorted_by(|a, b| a.partial_cmp(b))  // =>
  EOT
      :rust_feature => "#![feature(is_sorted)]",
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by",
    },
    {
      :ruby_method => "?",
      :rust_method => "is_sorted_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      [5_isize, -6, 7].is_sorted_by_key(|e| e.abs())  // =>
  EOT
      :rust_feature => "#![feature(is_sorted)]",
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by_key",
    },

    {
      :ruby_method => "?",
      :rust_method => "select_nth_unstable",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7, 6, 5];
      v.select_nth_unstable(0); // [0] が 5 になることだけは保証する
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "指定の位置の値だけはソート後と同じにする。ソート処理の一部分だけを切り出したような機能。いざ必要になったときこのメソッドのことを忘れている自信はある。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable",
    },
    {
      :ruby_method => "?",
      :rust_method => "select_nth_unstable_by",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7, 6, 5];
      v.select_nth_unstable_by(0, |a, b| a.cmp(b));
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by",
    },
    {
      :ruby_method => "?",
      :rust_method => "select_nth_unstable_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7_isize, 6, 5];
      v.select_nth_unstable_by_key(0, |e| e.abs());
      v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key",
    },

    {
      :ruby_method => "?",
      :rust_method => "binary_search",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
[5, 7, 9].binary_search(&7)  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "発見できたインデックスを返す。ソート済み配列だけに使える contains の速い版と考えられる。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search",
    },
    {
      :ruby_method => "bsearch_index",
      :rust_method => "binary_search_by",
      :ruby_example => <<~EOT,
[5, 7, 9].bsearch_index { |e| e >= 6 } # =>
EOT
      :rust_example => <<~EOT,
[5, 7, 9].binary_search_by(|e| e.cmp(&5))  // =>
[5, 7, 9].binary_search_by(|e| e.cmp(&6))  // =>
[5, 7, 9].binary_search_by(|e| e.cmp(&7))  // =>
[5, 7, 9].binary_search_by(|e| e.cmp(&8))  // =>
[5, 7, 9].binary_search_by(|e| e.cmp(&9))  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "条件を書くのではなく探す値を書かないといけないっぽい",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by",
    },
    {
      :ruby_method => "?",
      :rust_method => "binary_search_by_key",
      :ruby_example => <<~EOT,
EOT
      :rust_example => <<~EOT,
[(0, 5), (0, 7), (0, 9)].binary_search_by_key(&7, |&(_, e)| e)  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by_key",
    },

    {
      :ruby_method => "squeeze! の配列版",
      :rust_method => "dedup",
      :ruby_example => <<~EOT,
v = [5, 5, 6, 6, 5, 5, 5]
v.replace(v.chunk(&:itself).collect(&:first))
v  # =>

v = "5566555"
v.squeeze!
v  # =>
EOT
      :rust_example => <<~EOT,
    let mut v = vec![5, 5, 6, 6, 5, 5, 5];
    v.dedup();
    v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "連続する値を1つにする",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup",
    },
    {
      :ruby_method => "squeeze! の配列版風",
      :rust_method => "dedup_by_key(|e|)",
      :ruby_example => <<~EOT,
v = [5, 5, 6, 6, 5, 5, 5]
v.replace(v.chunk { |e| e }.collect(&:first))
v  # =>
EOT
      :rust_example => <<~EOT,
    let mut v = vec![5, 5, 6, 6, 5, 5, 5];
    v.dedup_by_key(|e| *e);
    v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "クロージャ付きの dedup",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup_by_key",
    },

    {
      :ruby_method => "squeeze! の配列版風",
      :rust_method => "dedup_by(|a, b|)",
      :ruby_example => <<~EOT,
v = [5, 5, 6, 6, 5, 5, 5]
v.replace(v.chunk_while { |a, b| a == b }.collect(&:first))
v  # => [5, 6, 5]
EOT
      :rust_example => <<~EOT,
    let mut v = vec![5, 5, 6, 6, 5, 5, 5];
    v.dedup_by(|a, b| a == b);
    v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => "クロージャに引数が2つ来る dedup",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup_by",
    },

    {
      :ruby_method => "?",
      :rust_method => "partition_dedup",
      :ruby_example => <<~EOT,
v = [5, 5, 6, 7, 7, 6, 5, 5]
a = v.chunk(&:itself).entries
a.collect(&:first)                                   # =>
a.find_all { |_, e| e.length >= 2 }.collect(&:first) # =>
EOT
      :rust_example => <<~EOT,
    let mut v = [5, 5, 6, 7, 7, 6, 5, 5];
    let (dedup, duplicates) = v.partition_dedup();
    dedup        // =>
    duplicates   // =>
    v            // =>
  EOT
      :rust_feature => "#![feature(slice_partition_dedup)]",
      :mutable => true,
      :desc => "他の dedup と同じだけど、ついでに連続した値たちも返す。破壊された元の値の並びは戻値のタプルの要素を結合したものになっているようだけどドキュメントに明記されていないので知らなくていいっぽい。",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.partition_dedup",
    },

    {
      :ruby_method => "upcase! の配列版",
      :rust_method => "make_ascii_uppercase",
      :ruby_example => <<~EOT,
v = [97, 66, 99, 68]
v.replace(v.pack("c*").upcase.unpack("c*"))
v  # =>

v = "aBcD"
v.upcase!
v  # =>
EOT
      :rust_example => <<~EOT,
    let mut v = vec![97, 66, 99, 68];
    v.make_ascii_uppercase();
    v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.make_ascii_uppercase",
    },

    {
      :ruby_method => "downcase! の配列版",
      :rust_method => "make_ascii_lowercase",
      :ruby_example => <<~EOT,
v = [97, 66, 99, 68]
v.replace(v.pack("c*").downcase.unpack("c*"))
v  # =>

v = "aBcD"
v.downcase!
v  # =>
EOT
      :rust_example => <<~EOT,
    let mut v = vec![97, 66, 99, 68];
    v.make_ascii_lowercase();
    v  // =>
  EOT
      :rust_feature => nil,
      :mutable => true,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.make_ascii_lowercase",
    },

    {
      :ruby_method => "all? { |e| (0..127).cover?(e) }",
      :rust_method => "is_ascii",
      :ruby_example => <<~EOT,
[65, 66, 67].all? { |e| (0..127).cover?(e) }  # =>
EOT
      :rust_example => <<~EOT,
[65, 66, 67].is_ascii()  // =>
  EOT
      :rust_feature => nil,
      :mutable => false,
      :desc => "配列が中の要素に依存したメソッドを持っていて違和感がある",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_ascii",
    },

    ################################################################################

    #   {
    #     :ruby_method => "?",
    #     :rust_method => "with_capacity",
    #     :ruby_example => <<~EOT,
    # EOT
    #     :rust_example => <<~EOT,
    #     let v: Vec<isize> = Vec::with_capacity(3);
    #     v.capacity()  // =>
    #     v.len()       // =>
    #      EOT
    #     :rust_feature => nil,
    #     :mutable => false,
    # :desc => nil,
    #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.with_capacity",
    #   },
    #   {
    #     :ruby_method => "?",
    #     :rust_method => "reserve",
    #     :ruby_example => <<~EOT,
    # EOT
    #     :rust_example => <<~EOT,
    #     // ▼reserve(n): 最低限 n は確保しておく
    #     let mut v: Vec<isize> = Vec::with_capacity(0);
    #     v.reserve(5);
    #     println!("{:?}", v.capacity() >= 5);
    # EOT
    #     :rust_feature => nil,
    #     :mutable => false,
    # :desc => nil,
    #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.reserve",
    #   },
    #   {
    #     :ruby_method => "?",
    #     :rust_method => "",
    #     :ruby_example => <<~EOT,
    # EOT
    #     :rust_example => <<~EOT,
    #     // ▼reserve_exact(n): reserve よりも少なく確保する版？？？
    #     let mut v: Vec<isize> = Vec::with_capacity(0);
    #     v.reserve_exact(5);
    #     println!("{:?}", v.capacity() >= 5);
    # EOT
    #     :rust_feature => nil,
    #     :mutable => false,
    # :desc => nil,
    #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.",
    #   },
    #   {
    #     :ruby_method => "?",
    #     :rust_method => "",
    #     :ruby_example => <<~EOT,
    # EOT
    #     :rust_example => <<~EOT,
    #     // // ▼try_reserve(n): reserve の失敗するかもしれない版
    #     // let mut v: Vec<isize> = Vec::with_capacity(0);
    #     // v.try_reserve(5);
    #     // println!("{:?}", v.capacity() >= 5);
    # EOT
    #     :rust_feature => nil,
    #     :mutable => false,
    # :desc => nil,
    #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.",
    #   },

    ################################################################################

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

    ################################################################################

    {
      :ruby_method => "to_enum",
      :rust_method => "iter",
      :ruby_example => %([5, 6, 7].to_enum # =>),
      :rust_example => <<~EOT,
[5, 6, 7].iter()  // =>
EOT
      :desc => "所有権が移動するときは into_iter で破壊的操作のときは iter_mut を使う",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.iter",
    },

    {
      :ruby_method => "entries",
      :rust_method => "iter.collect",
      :ruby_example => %([5, 6, 7].each.entries # =>),
      :rust_example => <<~EOT,
[5, 6, 7].iter().collect::<Vec<_>>() // =>
EOT
      :desc => "`::<Vec<_>>` の暗号はいったい何なのでしょう",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect",
      :build_by => :cargo,
    },

    {
      :ruby_method => "to_a",
      :rust_method => "iter.collect_vec",
      :ruby_example => %([5, 6, 7].each.to_a # =>),
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().collect_vec() // =>
EOT
      :desc => "Itertools を使うと簡潔に書けるようだ",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.collect_vec",
      :build_by => :cargo,
    },

    {
      :ruby_method => "each",
      :rust_method => "iter.for_each",
      :ruby_example => <<~EOT,
      [5, 6, 7].each { |e| p e }
EOT
      :rust_example => <<~EOT,
      [5, 6, 7].iter().for_each(|e| println!("{:?}", e));
EOT
      :rust_feature => nil,
      :desc => "`for` は先後が逆になって混乱するので `for_each` を使いたい。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each",
    },
    {
      :ruby_method => "each { break }",
      :rust_method => "iter.try_for_each",
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
      :ruby_method => "with_index",
      :rust_method => "iter.enumerate",
      :ruby_example => %(["a", "b"].each.with_index.entries # =>),
      :rust_example => %(["a", "b"].iter().enumerate().collect::<Vec<_>>() // =>),
      :desc => "Enumerable 的なものを連想してしまう。用語がぜんぜん違うので注意しよう。index の位置が逆なのも注意しよう。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.enumerate",
    },

    {
      :ruby_method => "with_index の抽象化",
      :rust_method => "iter.with_position",
      :ruby_example => <<~EOT,
module Enumerable
  def with_position
    collect.with_index do |e, i|
      if size == 1
        pos = :only
      else
        if i == 0
          pos = :first
        elsif i < size - 1
          pos = :middle
        else
          pos = :last
        end
      end
      [e, pos]
    end
  end
end

[5, 6, 7].with_position  # =>
[5].with_position        # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7].iter().with_position().collect_vec() // =>
[5].iter().with_position().collect_vec()       // =>
EOT
      :desc => "お気に入り",
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.with_position",
      :build_by => :cargo,
    },

    {
      :ruby_method => "tap { |e| e.each {} }",
      :rust_method => "iter.inspect",
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
      :ruby_method => "each_slice(n).collect(&:first)",
      :rust_method => "iter.step_by(n)",
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
      :ruby_method => "zip 余り除去",
      :rust_method => "iter.zip",
      :ruby_example => <<~EOT,
module Enumerable
  def zip2(*args)
    enums = [self, *args].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        y << enums.collect(&:next)
      end
    end
  end
end

[100, 200].zip2([5, 6, 7, 8]).to_a  # =>
[5, 6, 7, 8].zip2([100, 200]).to_a  # =>
EOT
      :rust_example => <<~EOT,
[100, 200].iter().zip([5, 6, 7, 8].iter()).collect::<Vec<_>>() // =>
[5, 6, 7, 8].iter().zip([100, 200].iter()).collect::<Vec<_>>() // =>
EOT
      :desc => "ペアになれなかった要素は無視されるので注意しよう",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip",
    },

    {
      :ruby_method => "zip 捨てない 詰める",
      :rust_method => "iter.interleave",
      :ruby_example => <<~EOT,
module Enumerable
  def interleave(*args)
    enums = [self, *args].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        exist = false
        enums.each do |e|
          begin
            y << e.next
            exist = true
          rescue StopIteration
          end
        end
        unless exist
          break
        end
      end
    end
  end
end

[5, 6, 7, 8].interleave([100, 200]).to_a  # => [5, 100, 6, 200, 7, 8]
[100, 200].interleave([5, 6, 7, 8]).to_a  # => [100, 5, 200, 6, 7, 8]
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7, 8].iter().interleave(&[100, 200]).collect::<Vec<_>>() // =>
[100, 200].iter().interleave(&[5, 6, 7, 8]).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.interleave",
      :build_by => :cargo,
    },

    {
      :ruby_method => "zip 捨てない 詰める 富豪的",
      :rust_method => "iter.zip_longest",
      :ruby_example => <<~EOT,
module Enumerable
  def zip_longest(other)
    a = to_enum
    b = other.to_enum
    none = Object.new
    Enumerator.new do |y|
      loop do
        l = a.next rescue none
        r = b.next rescue none
        case
        when l != none && r != none
          y << [:both, l, r]
        when l != none
          y << [:left, l]
        when r != none
          y << [:right, r]
        else
          break
        end
      end
    end
  end
end

[5, 6, 7, 8].zip_longest([100, 200]).to_a  # => [[:both, 5, 100], [:both, 6, 200], [:left, 7], [:left, 8]]
[100, 200].zip_longest([5, 6, 7, 8]).to_a  # => [[:both, 100, 5], [:both, 200, 6], [:right, 7], [:right, 8]]
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7, 8].iter().zip_longest(&[100, 200]).collect::<Vec<_>>() // =>
[100, 200].iter().zip_longest(&[5, 6, 7, 8]).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.zip_longest",
      :build_by => :cargo,
    },

    {
      :ruby_method => "zip 次が無いと終わり",
      :rust_method => "iter.interleave_shortest",
      :ruby_example => <<~EOT,
module Enumerable
  def interleave_shortest(*others)
    enums = [self, *others].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        enums.each do |e|
          y << e.next
        end
      end
    end
  end
end

[5, 6, 7, 8].interleave_shortest([100, 200]).to_a  # => [5, 100, 6, 200, 7]
[100, 200].interleave_shortest([5, 6, 7, 8]).to_a  # => [100, 5, 200, 6]
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[5, 6, 7, 8].iter().interleave_shortest(&[100, 200]).collect::<Vec<_>>() // =>
[100, 200].iter().interleave_shortest(&[5, 6, 7, 8]).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.interleave_shortest",
      :build_by => :cargo,
    },

    {
      :ruby_method => "sort.take(n)",
      :rust_method => "iter.k_smallest(n)",
      :ruby_example => <<~EOT,
[6, 7, 5].sort.take(2) # =>
EOT
      :rust_example => <<~EOT,
use itertools::Itertools;
[6, 7, 5].iter().k_smallest(2).collect::<Vec<_>>() // =>
EOT
      :desc => nil,
      :doc_url => "https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.k_smallest",
      :build_by => :cargo,
    },

    ################################################################################ value

    {
      :ruby_method   => "<=>",
      :rust_method   => "iter.cmp",
      :ruby_example    => %([5, 6] <=> [5, 6] # =>),
      :rust_example    => %([5, 6].iter().cmp([5, 6].iter()) // =>),
      :desc         => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp",
    },
    {
      :ruby_method   => "?",
      :rust_method   => "iter.cmp_by",
      :ruby_example    => <<~EOT,
it = [5, 6].to_enum
[5, 6].all? { |e| e == it.next } # =>
EOT
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
      :rust_method   => "iter.partial_cmp_by",
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
    #       :rust_method => "iter.by_ref",
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
    #       :rust_method => "iter.first",
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
      :ruby_method => "join + each ???",
      :rust_method => "iter.intersperse",
      :ruby_example => nil,
      :rust_example => %(["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // =>),
      :rust_feature => "#![feature(iter_intersperse)]",
      :desc => "セパレータは毎回固定で良いとき用。Itertools にも同名のメソッドがある。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse",
    },

    {
      :ruby_method => "join + each ???",
      :rust_method => "iter.intersperse_with",
      :ruby_example => nil,
      :rust_example => %(["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // =>),
      :rust_feature => "#![feature(iter_intersperse)]",
      :desc => "intersperse のクロージャ版。Itertools にも同名のメソッドがある。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with",
    },

    ################################################################################ イテレータ操作

    {
      :ruby_method => "chain",
      :rust_method => "iter.chain",
      :ruby_example => %([5, 6].chain([7, 8]).entries # =>),
      :rust_example => %([5, 6].iter().chain([7, 8].iter()).collect::<Vec<_>>() // =>),
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain",
    },

    {
      :ruby_method => "it.next",
      :rust_method => "it.next",
      :ruby_example => <<~EOT,
       it = [5, 6].to_enum
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
      :ruby_method => "it.peek",
      :rust_method => "it.peek",
      :ruby_example => <<~EOT,
      it = [5, 6, 7].to_enum
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
      :desc => "peekable すると peek が使えるようになる",
      :doc_url => "https://doc.rust-lang.org/std/iter/struct.Peekable.html#method.peek",
    },

    {
      :ruby_method => "?",
      :rust_method => "it.nth",
      :ruby_example => <<~EOT,
it = [5, 6, 7, 8].to_enum
nth = -> n {
  n.times { it.next rescue nil }
  it.next rescue nil
}
nth[1] # =>
nth[1] # =>
nth[1] # =>
EOT
      :rust_example => <<~EOT,
    let mut it = [5, 6, 7, 8].iter();
    it.nth(1)  // =>
    it.nth(1)  // =>
    it.nth(1)  // =>
EOT
      :desc => "メソッド名からは想像が難しいが指定回数スキップして next する",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth",
    },

    {
      :ruby_method => "n.times { it.next }",
      :rust_method => "it.advance_by(n)",
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
      :rust_method => "it.fuse",
      :ruby_example => <<~EOT,
class Foo < Enumerator
  def fuse!
    @fuse = true
  end

  def next
    if @stop
      return nil
    end
    super.tap do |v|
      unless v
        if @fuse
          @stop = true
        end
      end
    end
  end
end

it = Foo.new do |y|
  0.step.cycle do |i|
    if i.even?
      y << i
    else
      y << nil
    end
  end
end

it.next  # =>
it.next  # =>
it.next  # =>
it.next  # =>
it.fuse!
it.next  # =>
it.next  # =>
it.next  # =>
EOT
      :rust_example => <<~EOT,
      struct Foo {
          counter: isize,
      }

      // カウンタが偶数のときだけその値を返す
      impl Iterator for Foo {
          type Item = isize;

          fn next(&mut self) -> Option<isize> {
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
      it.next()  // =>
      it.next()  // =>
      it.next()  // =>
      it.next()  // =>
      let mut it = it.fuse();
      it.next()  // =>
      it.next()  // =>
      it.next()  // =>
    EOT
      :desc => "fuse を呼んだ後、最初の None が来てから None を継続する。どういうときに使うのかはわからない。",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse",
    },

    {
      :ruby_method => "?",
      :rust_method => "it.size_hint",
      :ruby_example => <<~EOT,
     EOT
      :rust_example => <<~EOT,
      let it = ["a", "b", "c"].iter();
      it.size_hint() // =>
     EOT
      :desc => "イテレータの残りの長さの境界(下限と上限)を返す。ってどゆこと？",
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint",
    },

    #     ################################################################################

    {
      :ruby_method => "?",
      :rust_method => "iter.eq",
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
      :doc_url => "https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq",
    },

    {
      :ruby_method => "?",
      :rust_method => "iter.eq_by",
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
      :rust_method => "iter.is_sorted",
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
      :rust_method => "iter.is_sorted_by",
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
      :rust_method => "iter.is_sorted_by_key",
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
