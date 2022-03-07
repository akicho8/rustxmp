# https://doc.rust-lang.org/std/vec/struct.Vec.html

VEC_LIST = [
  {
    :ruby_title => "new",
    :rust_title => "new",
    :ruby_code => <<~EOT,
Array.new # =>
     EOT
    :rust_code => <<~EOT,
Vec::<isize>::new() // =>
     EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.new",
  },
  {
    :ruby_title => "push",
    :rust_title => "push",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    let mut v = vec![5, 6];
    v.push(7);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.push",
  },
  {
    :ruby_title => "?",
    :rust_title => "pop",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼pop: pop
    let mut v = vec![5, 6, 7];
    v.pop()  // =>
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.pop",
  },
  {
    :ruby_title => "?",
    :rust_title => "append",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼append: concat
    let mut a = vec![5, 6];
    let mut b = vec![7, 8];
    a.append(&mut b);
    a  // =>
    b  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append",
  },
  {
    :ruby_title => "?",
    :rust_title => "is_empty",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼is_empty: empty?
    let v: Vec<isize> = vec![];
    v.is_empty()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty",
  },
  {
    :ruby_title => "?",
    :rust_title => "clear",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼clear: clear
    let mut v = vec![5, 6];
    v.clear();
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear",
  },
  {
    :ruby_title => "?",
    :rust_title => "len",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼len: length
    let v = vec![5, 6];
    v.len()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len",
  },
  {
    :ruby_title => "?",
    :rust_title => "split_at",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼split_at: ?
    let v = vec![5, 6, 7, 8];
    let (left, right) = v.split_at(2);
    left  // =>
    right  // =>
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at",
  },
  {
    :ruby_title => "?",
    :rust_title => "split_off",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼split_off: ?
    let mut a = vec![5, 6, 7, 8];
    let b = a.split_off(2);
    a  // =>
    b  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off",
  },
  {
    :ruby_title => "?",
    :rust_title => "first",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼first: first
    let v = vec![5, 6, 7];
    v.first()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first",
  },
  {
    :ruby_title => "?",
    :rust_title => "last",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼last: last
    let v = vec![5, 6, 7];
    v.last()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last",
  },
  {
    :ruby_title => "?",
    :rust_title => "get",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼get: at
    let v = vec![5, 6, 7, 8];
    v.get(1)  // =>
    v.get(1..=2)  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get",
  },
  {
    :ruby_title => "?",
    :rust_title => "swap",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼swap: ?
    let mut v = vec![5, 6, 7, 8];
    v.swap(1, 2)  // =>
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap",
  },
  {
    :ruby_title => "?",
    :rust_title => "windows",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼windows: each_cons(2).to_a
    let v = vec![5, 6, 7, 8];
    v.windows(2).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows",
  },
  {
    :ruby_title => "?",
    :rust_title => "chunks",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼chunks: each_slice(2).to_a
    let v = vec![5, 6, 7, 8, 9];
    v.chunks(2).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks",
  },
  {
    :ruby_title => "?",
    :rust_title => "rchunks",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼rchunks: ?
    let v = vec![5, 6, 7, 8, 9];
    v.rchunks(2).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rchunks",
  },
  {
    :ruby_title => "?",
    :rust_title => "split",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼split: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    v.split(|&e| e == 0).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split",
  },
  {
    :ruby_title => "?",
    :rust_title => "split_inclusive",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼split_inclusive: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive",
  },
  {
    :ruby_title => "?",
    :rust_title => "rsplit",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼rsplit: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit",
  },
  {
    :ruby_title => "?",
    :rust_title => "splitn",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼splitn: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    v.splitn(2, |&e| e == 0).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.splitn",
  },
  {
    :ruby_title => "?",
    :rust_title => "rsplitn",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼rsplitn: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn",
  },
  {
    :ruby_title => "?",
    :rust_title => "contains",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼contains: ?
    [5, 6, 7].contains(&6)  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains",
  },
  {
    :ruby_title => "?",
    :rust_title => "starts_with",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼starts_with: ?
    [5, 6, 7].starts_with(&[5, 6])  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with",
  },
  {
    :ruby_title => "?",
    :rust_title => "ends_with",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼ends_with: ?
    [5, 6, 7].ends_with(&[6, 7])  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with",
  },
  {
    :ruby_title => "?",
    :rust_title => "strip_prefix",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼strip_prefix: ?
    [5, 6, 7, 8].strip_prefix(&[5, 6])  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix",
  },
  {
    :ruby_title => "?",
    :rust_title => "strip_suffix",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼strip_suffix: ?
    [5, 6, 7, 8].strip_suffix(&[7, 8])  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix",
  },
  {
    :ruby_title => "?",
    :rust_title => "binary_search",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼binary_search: ?
    [5, 6, 7, 8].binary_search(&7)  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search",
  },
  {
    :ruby_title => "?",
    :rust_title => "select_nth_unstable",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼select_nth_unstable: ?
    let mut v = vec![6, 8, 7, 5];
    v.select_nth_unstable(0);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable",
  },
  {
    :ruby_title => "?",
    :rust_title => "select_nth_unstable_by",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼select_nth_unstable_by: ?
    let mut v = vec![6, 8, 7, 5];
    v.select_nth_unstable_by(0, |a, b| a.cmp(b));
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by",
  },
  {
    :ruby_title => "?",
    :rust_title => "select_nth_unstable_by_key",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼select_nth_unstable_by_key: ?
    let mut v = vec![6_i32, 8, 7, 5];
    v.select_nth_unstable_by_key(0, |e| e.abs());
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key",
  },
  {
    :ruby_title => "?",
    :rust_title => "rotate_left",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼rotate_left: ?
    let mut v = vec![5, 6, 7];
    v.rotate_left(1);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left",
  },
  {
    :ruby_title => "?",
    :rust_title => "rotate_right",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼rotate_right: ?
    let mut v = vec![5, 6, 7];
    v.rotate_right(1);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right",
  },
  {
    :ruby_title => "?",
    :rust_title => "fill",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼fill: ?
    let mut v = vec![5, 6, 7];
    v.fill(8);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill",
  },
  {
    :ruby_title => "?",
    :rust_title => "fill_with",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼fill_with: ?
    let mut v = vec![5, 6, 7];
    v.fill_with(|| 8);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with",
  },
  {
    :ruby_title => "?",
    :rust_title => "sort",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼sort: ?
    let mut v = vec![7, 6, 5];
    v.sort();
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort",
  },
  {
    :ruby_title => "?",
    :rust_title => "sort_by",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼sort_by: ?
    let mut v = vec![7, 6, 5];
    v.sort_by(|a, b| a.cmp(b));
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by",
  },
  {
    :ruby_title => "?",
    :rust_title => "sort_by_key",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼sort_by_key: ?
    let mut v = vec![7_i32, -6, 5];
    v.sort_by_key(|e| e.abs());
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key",
  },
  {
    :ruby_title => "?",
    :rust_title => "sort_by_cached_key",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼sort_by_cached_key: ?
    let mut v = vec![7_i32, -6, 5];
    v.sort_by_cached_key(|e| e.abs());
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key",
  },
  {
    :ruby_title => "?",
    :rust_title => "sort_unstable",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼sort_unstable: ?
    let mut v = vec![6, 8, 7, 5];
    v.sort_unstable();
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable",
  },
  {
    :ruby_title => "?",
    :rust_title => "sort_unstable_by",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼sort_unstable_by: ?
    let mut v = vec![6, 8, 7, 5];
    v.sort_unstable_by(|a, b| a.cmp(b));
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by",
  },
  {
    :ruby_title => "?",
    :rust_title => "sort_unstable_by_key",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼sort_unstable_by_key: ?
    let mut v = vec![-6_i32, 8, -7, 5];
    v.sort_unstable_by_key(|e| e.abs());
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by_key",
  },
  {
    :ruby_title => "?",
    :rust_title => "is_sorted",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼is_sorted: ?
    [5, 6, 7].is_sorted()  // =>
EOT
    :rust_feature => "#![feature(is_sorted)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted",
  },
  {
    :ruby_title => "?",
    :rust_title => "is_sorted_by",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼is_sorted_by: ?
    [5, 6, 7].is_sorted_by(|a, b| a.partial_cmp(b))  // =>
EOT
    :rust_feature => "#![feature(is_sorted)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by",
  },
  {
    :ruby_title => "?",
    :rust_title => "is_sorted_by_key",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼is_sorted_by_key: ?
    [5_i32, -6, 7].is_sorted_by_key(|e| e.abs())  // =>
EOT
    :rust_feature => "#![feature(is_sorted)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by_key",
  },
  {
    :ruby_title => "?",
    :rust_title => "take",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼take: ?
    let mut v: &[_] = &[5, 6, 7];
    v.take(..2)  // =>
    v            // =>
EOT
    :rust_feature => "#![feature(slice_take)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take",
  },
  {
    :ruby_title => "?",
    :rust_title => "take_first",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    let mut v: &[_] = &[5, 6, 7];
    v.take_first()  // =>
    v               // =>
EOT
    :rust_feature => "#![feature(slice_take)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_first",
  },
  {
    :ruby_title => "?",
    :rust_title => "take_last",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    let mut v: &[_] = &[5, 6, 7];
    v.take_last()  // =>
    v              // =>
EOT
    :rust_feature => "#![feature(slice_take)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_last",
  },
  {
    :ruby_title => "?",
    :rust_title => "to_vec",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    let v = vec![5, 6, 7];
    v.to_vec()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.to_vec",
  },
  {
    :ruby_title => "?",
    :rust_title => "concat",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼concat:
    ["foo", "bar"].concat()  // =>
    [["foo"], ["bar"]].concat()  // =>
    [[5, 6], [7, 8]].concat()  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat",
  },
  {
    :ruby_title => "?",
    :rust_title => "join",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼join
    ["foo", "bar"].join("-")  // =>
    [[5, 6], [7, 8]].join(&0)  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join",
  },
  {
    :ruby_title => "?",
    :rust_title => "group_by",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼group_by: chunk 相当
    [5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()  // =>
EOT
    :rust_feature => "#![feature(slice_group_by)]",
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by",
  },

  {
    :ruby_title => "?",
    :rust_title => "swap_remove",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼swap_remove(i): iの位置を削除して詰める。O(1) なかわりに順序が変わる。最後の要素が来る
    let mut v = vec![5, 6, 7, 8];
    v.swap_remove(0)  // =>
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove",
  },
  {
    :ruby_title => "?",
    :rust_title => "remove",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    // ▼remove(i): iの位置を削除して詰める。
    let mut v = vec![5, 6, 7, 8];
    v.remove(0)  // =>
    v  // =>
EOT
    :rust_feature => nil,
    :desc => "O(n) な代わりに順序は変わらない",
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove",
  },
  {
    :ruby_title => "?",
    :rust_title => "insert",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    let mut v = vec![5, 7, 8];
    v.insert(1, 6);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert",
  },
  {
    :ruby_title => "select!",
    :rust_title => "retain",
    :ruby_code => <<~EOT,
EOT
    :rust_code => <<~EOT,
    let mut v = vec![-1, -1, 1, 1];
    v.retain(|&e| e > 0);
    v  // =>
EOT
    :rust_feature => nil,
    :desc => nil,
    :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain",
  },

  #   {
  #     :ruby_title => "?",
  #     :rust_title => "with_capacity",
  #     :ruby_code => <<~EOT,
  # EOT
  #     :rust_code => <<~EOT,
  #     let v: Vec<isize> = Vec::with_capacity(3);
  #     v.capacity()  // =>
  #     v.len()       // =>
  #      EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.with_capacity",
  #   },
  #   {
  #     :ruby_title => "?",
  #     :rust_title => "reserve",
  #     :ruby_code => <<~EOT,
  # EOT
  #     :rust_code => <<~EOT,
  #     // ▼reserve(n): 最低限 n は確保しておく
  #     let mut v: Vec<isize> = Vec::with_capacity(0);
  #     v.reserve(5);
  #     println!("{:?}", v.capacity() >= 5);
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.reserve",
  #   },
  #   {
  #     :ruby_title => "?",
  #     :rust_title => "",
  #     :ruby_code => <<~EOT,
  # EOT
  #     :rust_code => <<~EOT,
  #     // ▼reserve_exact(n): reserve よりも少なく確保する版？？？
  #     let mut v: Vec<isize> = Vec::with_capacity(0);
  #     v.reserve_exact(5);
  #     println!("{:?}", v.capacity() >= 5);
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.",
  #   },
  #   {
  #     :ruby_title => "?",
  #     :rust_title => "",
  #     :ruby_code => <<~EOT,
  # EOT
  #     :rust_code => <<~EOT,
  #     // // ▼try_reserve(n): reserve の失敗するかもしれない版
  #     // let mut v: Vec<isize> = Vec::with_capacity(0);
  #     // v.try_reserve(5);
  #     // println!("{:?}", v.capacity() >= 5);
  # EOT
  #     :rust_feature => nil,
  #     :desc => nil,
  #     :source_url => "https://doc.rust-lang.org/std/vec/struct.Vec.html#method.",
  #   },

]
