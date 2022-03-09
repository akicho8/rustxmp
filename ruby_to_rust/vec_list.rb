# https://doc.rust-lang.org/std/vec/struct.Vec.html

VEC_LIST = [
  {
    :ruby_method => "new",
    :rust_method => "new",
    :ruby_example => <<~EOT,
Array.new # =>
     EOT
    :rust_example => <<~EOT,
Vec::<isize>::new() // =>
     EOT
    :rust_feature => nil,
    :desc => nil,
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.new",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.push",
    },
{
      :ruby_method => "pop",
      :rust_method => "pop",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.pop()  # =>
v        # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.pop()  // =>
      v        // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.pop",
    },
    {
      :ruby_method => "a.concat(b.slice!(0..-1))",
      :rust_method => "append",
      :ruby_example => <<~EOT,
a = [5, 6]
b = [7, 8]
a.concat(b.slice!(0..-1))
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
    :desc => "push のエイリアスではない。引数の中身が移動する。append というより move 的な感じ。",
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append",
    },
    {
      :ruby_method => "empty",
      :rust_method => "is_empty",
      :ruby_example => <<~EOT,
[].empty? # =>
  EOT
      :rust_example => <<~EOT,
Vec::<isize>::new().is_empty() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear",
    },
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len",
    },
    {
      :ruby_method => "partition.with_index",
      :rust_method => "split_at",
      :ruby_example => <<~EOT,
v = [5, 6, 7, 8]
v.partition.with_index { |_, i| i < 2 } # =>
[v.take(2), v.drop(2)]                  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8];
      let (a, b) = v.split_at(2);
      a  // =>
      b  // =>
      v  // =>
  EOT
    :rust_feature => nil,
    :desc => "元を破壊しない",
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at",
  },
  {
    :ruby_method => "slice!",
    :rust_method => "split_off",
    :ruby_example => <<~EOT,
a = [5, 6, 7, 8]
b = a.slice!(2..-1)
a  # =>
b  # =>
  EOT
    :rust_example => <<~EOT,
      let mut a = vec![5, 6, 7, 8];
      let b = a.split_off(2);
      a  // =>
      b  // =>
  EOT
    :rust_feature => nil,
    :desc => nil,
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off",
  },
    {
      :ruby_method => "first",
      :rust_method => "first",
      :ruby_example => <<~EOT,
[5, 6, 7].first  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7];
      v.first()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first",
    },
    {
      :ruby_method => "last",
      :rust_method => "last",
      :ruby_example => <<~EOT,
[5, 6, 7].last  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7];
      v.last()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last",
    },
    {
      :ruby_method => "slice",
      :rust_method => "get",
      :ruby_example => <<~EOT,
a = [5, 6, 7, 8]
a.slice(1)     # =>
a.slice(1..2)  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8];
      v.get(1)      // =>
      v.get(1..=2)  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get",
    },
    {
      :ruby_method => "?",
      :rust_method => "swap",
      :ruby_example => <<~EOT,
v = [5, 6, 7, 8]
v[2], v[1] = v[1], v[2]
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7, 8];
      v.swap(1, 2)  // =>
      v             // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap",
    },
    {
      :ruby_method => "each_cons",
      :rust_method => "windows",
      :ruby_example => <<~EOT,
[5, 6, 7, 8].each_cons(2).to_a  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8];
      v.windows(2).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows",
    },
    {
      :ruby_method => "each_slice",
      :rust_method => "chunks",
      :ruby_example => <<~EOT,
      [5, 6, 7, 8, 9].each_slice(2).to_a  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8, 9];
      v.chunks(2).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks",
    },
    {
    :ruby_method => "reverse.each_slice + reverse",
      :rust_method => "rchunks",
      :ruby_example => <<~EOT,
[5, 6, 7, 8, 9].reverse.each_slice(2).collect(&:reverse)  # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 7, 8, 9];
      v.rchunks(2).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
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
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.split(|&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split",
    },
    {
      :ruby_method => "slice_after",
      :rust_method => "split_inclusive",
      :ruby_example => <<~EOT,
[5, 6, 0, 7, 8, 0, 9].slice_after { |e| e == 0 }.to_a # => [[5, 6, 0], [7, 8, 0], [9]]
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive",
    },
    {
      :ruby_method => "reverse.chunk + reverse",
      :rust_method => "rsplit",
      :ruby_example => <<~EOT,
[5, 6, 0, 7, 8, 0, 9].reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # =>
  EOT
      :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit",
    },
    {
      :ruby_method => "?",
      :rust_method => "splitn",
      :ruby_example => <<~EOT,
"5607809".split("0", 2)  # =>

v = [5, 6, 0, 7, 8, 0, 9]
n = 2
v = v.slice_after { |e| e == 0 }
v = [
  *v.take(n - 1).collect { |e| e[0..-2] },
  v.drop(n - 1).flatten(1),
]
v # => [[5, 6], [7, 8, 0, 9]]
  EOT
    :rust_example => <<~EOT,
      let v = vec![5, 6, 0, 7, 8, 0, 9];
      v.splitn(2, |&e| e == 0).collect::<Vec<_>>()  // =>
  EOT
    :rust_feature => nil,
    :desc => "String#split の配列版と考えるとわかりやすい",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains",
    },
    {
      :ruby_method => "?",
      :rust_method => "starts_with",
      :ruby_example => <<~EOT,
[5, 6, 7].first([5, 6].length) == [5, 6]  # =>
"567".start_with?("56")                  # =>
  EOT
      :rust_example => <<~EOT,
[5, 6, 7].starts_with(&[5, 6])  // =>
  EOT
      :rust_feature => nil,
      :desc => "String#start_with? の配列版と考えるとわかりやすい",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with",
    },
    {
      :ruby_method => "?",
      :rust_method => "ends_with",
      :ruby_example => <<~EOT,
[5, 6, 7].last([6, 7].length) == [6, 7]  # =>
"567".end_with?("67")                    # =>
  EOT
      :rust_example => <<~EOT,
      [5, 6, 7].ends_with(&[6, 7])  // =>
  EOT
      :rust_feature => nil,
    :desc => "String#end_with? の配列版と考えるとわかりやすい",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with",
    },
    {
    :ruby_method => "?",
    :rust_method => "strip_prefix",
    :ruby_example => <<~EOT,
"567".delete_prefix("67")      # =>

a = [5, 6, 7]
b = [5, 6]
if a.first(b.size) == b
  a.drop(b.size)                # =>
end
  EOT
      :rust_example => <<~EOT,
      [5, 6, 7].strip_prefix(&[5, 6])  // =>
  EOT
      :rust_feature => nil,
    :desc => "String#delete_prefix の配列版と考えるとわかりやすい",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix",
    },
    {
      :ruby_method => "?",
      :rust_method => "strip_suffix",
      :ruby_example => <<~EOT,
"567".delete_suffix("67")      # =>

a = [5, 6, 7]
b = [6, 7]
if a.last(b.size) == b
  a.take(a.size - b.size)      # =>
end
  EOT
      :rust_example => <<~EOT,
[5, 6, 7].strip_suffix(&[6, 7])  // =>
  EOT
    :rust_feature => nil,
    :desc => "String#delete_suffix の配列版と考えるとわかりやすい",
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix",
  },
  {
    :ruby_method => "?",
    :rust_method => "binary_search",
    :ruby_example => <<~EOT,
[5, 7, 9].bsearch { |e| e >= 6 } # =>
  EOT
      :rust_example => <<~EOT,
[5, 7, 9].binary_search(&7)  // =>
  EOT
    :rust_feature => nil,
    :desc => "bsearch とは使い勝手がぜんぜん違う。contains の速い版って感じだろうか。",
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search",
  },

  {
    :ruby_method => "?",
    :rust_method => "binary_search_by",
    :ruby_example => <<~EOT,
EOT
    :rust_example => <<~EOT,
[5, 7, 9].binary_search_by(|e| e.cmp(&7))  // =>
  EOT
    :rust_feature => nil,
    :desc => nil,
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
    :desc => nil,
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by_key",
  },

    {
      :ruby_method => "?",
      :rust_method => "select_nth_unstable",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![6, 8, 7, 5];
      v.select_nth_unstable(0); // [0] が 5 になることだけは保証する
      v  // =>
  EOT
      :rust_feature => nil,
    :desc => "指定のインデックスの値だけはソート後と同じにする(？)",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable",
    },

    {
      :ruby_method => "?",
      :rust_method => "select_nth_unstable_by",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![6, 8, 7, 5];
      v.select_nth_unstable_by(0, |a, b| a.cmp(b));
      v  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by",
    },

    {
      :ruby_method => "?",
      :rust_method => "select_nth_unstable_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![6_i32, 8, 7, 5];
      v.select_nth_unstable_by_key(0, |e| e.abs());
      v  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key",
    },

    {
      :ruby_method => "rotate!",
      :rust_method => "rotate_left",
      :ruby_example => <<~EOT,
v = [5, 6, 7]
v.rotate!
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![5, 6, 7];
      v.rotate_left(1);
      v  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left",
    },

    {
      :ruby_method => "rotate!(-n)",
      :rust_method => "rotate_right",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill",
    },

    {
    :ruby_method => "fill { }",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with",
    },

    {
      :ruby_method => "sort!",
      :rust_method => "sort",
      :ruby_example => <<~EOT,
v = vec![7, 6, 5];
v.sort!
v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7, 6, 5];
      v.sort();
      v  // =>
  EOT
      :rust_feature => nil,
      :desc => "どっちかと言えば sort! は sort_unstable の方が近い",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort",
    },

    {
      :ruby_method => "sort! { }",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by",
    },

    {
      :ruby_method => "?",
      :rust_method => "sort_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7_i32, -6, 5];
      let mut c = 0;
      v.sort_by_key(|e| { c += 1; e.abs() });
      v  // =>
      c  // =>
  EOT
      :rust_feature => nil,
      :desc => "クロージャが要素数よりも多く呼ばれるので注意",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key",
    },

    {
      :ruby_method => "sort_by!",
      :rust_method => "sort_by_cached_key",
      :ruby_example => <<~EOT,
      v = [7, -6, 5]
      v.sort_by!(&:abs)
      v  # =>
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7_i32, -6, 5];
      let mut c = 0;
      v.sort_by_cached_key(|e| { c += 1; e.abs() });
      v  // =>
      c  // =>
  EOT
      :rust_feature => nil,
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
    :desc => "sort_unstable 系は等しい要素も並び換えるけど計算量が少ないらしい。等しい要素も並び換える点はRubyのソートも同じ。",
    :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable",
    },

    {
      :ruby_method => "?",
      :rust_method => "sort_unstable_by",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![6, 8, 7, 5];
      v.sort_unstable_by(|a, b| a.cmp(b));
      v  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by",
    },

    {
      :ruby_method => "?",
      :rust_method => "sort_unstable_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      let mut v = vec![7_i32, -6, 5];
      let mut c = 0;
      v.sort_unstable_by_key(|e| { c += 1; e.abs() });
      v  // =>
      c  // =>
  EOT
      :rust_feature => nil,
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
      :desc => nil,
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by",
    },
    {
      :ruby_method => "?",
      :rust_method => "is_sorted_by_key",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
      [5_i32, -6, 7].is_sorted_by_key(|e| e.abs())  // =>
  EOT
      :rust_feature => "#![feature(is_sorted)]",
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by_key",
    },
    {
      :ruby_method => "slice!",
      :rust_method => "take",
      :ruby_example => <<~EOT,
      v = [5, 6, 7, 8]
      v.slice!(...2) # =>
      v              # =>

      v = [5, 6, 7, 8]
      v.slice!(2...) # =>
      v              # =>
  EOT
      :rust_example => <<~EOT,
      let mut v: &[_] = &[5, 6, 7, 8];
      v.take(..2)  // =>
      v            // =>

      let mut v: &[_] = &[5, 6, 7, 8];
      v.take(2..)  // =>
      v            // =>
  EOT
      :rust_feature => "#![feature(slice_take)]",
      :desc => "引数は OneSidedRange 型なので 1..=2 とか書くとエラーになる",
      :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take",
    },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "take_first",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     let mut v: &[_] = &[5, 6, 7];
  #     v.take_first()  // =>
  #     v               // =>
  # EOT
  #     :rust_feature => "#![feature(slice_take)]",
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_first",
  #   },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "take_last",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     let mut v: &[_] = &[5, 6, 7];
  #     v.take_last()  // =>
  #     v              // =>
  # EOT
  #     :rust_feature => "#![feature(slice_take)]",
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_last",
  #   },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "to_vec",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     let v = vec![5, 6, 7];
  #     v.to_vec()  // =>
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.to_vec",
  #   },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "concat",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     // ▼concat:
  #     ["foo", "bar"].concat()  // =>
  #     [["foo"], ["bar"]].concat()  // =>
  #     [[5, 6], [7, 8]].concat()  // =>
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat",
  #   },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "join",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     // ▼join
  #     ["foo", "bar"].join("-")  // =>
  #     [[5, 6], [7, 8]].join(&0)  // =>
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join",
  #   },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "group_by",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     // ▼group_by: chunk 相当
  #     [5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()  // =>
  # EOT
  #     :rust_feature => "#![feature(slice_group_by)]",
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by",
  #   },
  #
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "swap_remove",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     // ▼swap_remove(i): iの位置を削除して詰める。O(1) なかわりに順序が変わる。最後の要素が来る
  #     let mut v = vec![5, 6, 7, 8];
  #     v.swap_remove(0)  // =>
  #     v  // =>
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove",
  #   },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "remove",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     // ▼remove(i): iの位置を削除して詰める。
  #     let mut v = vec![5, 6, 7, 8];
  #     v.remove(0)  // =>
  #     v  // =>
  # EOT
  #     :rust_feature => nil,
  #     :desc => "O(n) な代わりに順序は変わらない",
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove",
  #   },
  #   {
  #     :ruby_method => "?",
  #     :rust_method => "insert",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     let mut v = vec![5, 7, 8];
  #     v.insert(1, 6);
  #     v  // =>
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert",
  #   },
  #   {
  #     :ruby_method => "select!",
  #     :rust_method => "retain",
  #     :ruby_example => <<~EOT,
  # EOT
  #     :rust_example => <<~EOT,
  #     let mut v = vec![-1, -1, 1, 1];
  #     v.retain(|&e| e > 0);
  #     v  // =>
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain",
  #   },

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
  #     :desc => nil,
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
  #     :desc => nil,
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
  #     :desc => nil,
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
  #     :desc => nil,
  #     :doc_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.",
  #   },

]
