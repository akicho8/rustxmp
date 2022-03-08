
## a.concat(b.slice!(0..-1)) → append
```ruby:Ruby
a = [5, 6]
b = [7, 8]
a.concat(b.slice!(0..-1))
a # => [5, 6, 7, 8]
b # => []
```
```rust:Rust
let mut a = vec![5, 6];
let mut b = vec![7, 8];
a.append(&mut b);
a  // => [5, 6, 7, 8]
b  // => []
```
push のエイリアスではない。引数の中身が移動する。append というより move 的な感じ。
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%5D%3B%0Alet+mut+b+%3D+vec%21%5B7%2C+8%5D%3B%0Aa.append%28%26mut+b%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append)

## empty → is_empty
```ruby:Ruby
[].empty? # => true
```
```rust:Rust
Vec::<isize>::new().is_empty() // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+Vec%3A%3A%3Cisize%3E%3A%3Anew%28%29.is_empty%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty)

## clear → clear
```ruby:Ruby
v = [5, 6]
v.clear
v  # => []
```
```rust:Rust
let mut v = vec![5, 6];
v.clear();
v  // => []
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0Av.clear%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear)

## length → len
```ruby:Ruby
[5, 6].length  # => 2
```
```rust:Rust
let v = vec![5, 6];
v.len()  // => 2
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len)

## partition.with_index → split_at
```ruby:Ruby
v = [5, 6, 7, 8]
v.partition.with_index { |_, i| i < 2 } # => [[5, 6], [7, 8]]
[v.take(2), v.drop(2)]                  # => [[5, 6], [7, 8]]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
let (a, b) = v.split_at(2);
a  // => [5, 6]
b  // => [7, 8]
v  // => [5, 6, 7, 8]
```
元を破壊しない
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Alet+%28a%2C+b%29+%3D+v.split_at%282%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at)

## slice! → split_off
```ruby:Ruby
a = [5, 6, 7, 8]
b = a.slice!(2..-1)
a  # => [5, 6]
b  # => [7, 8]
```
```rust:Rust
let mut a = vec![5, 6, 7, 8];
let b = a.split_off(2);
a  // => [5, 6]
b  // => [7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Alet+b+%3D+a.split_off%282%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off)

## first → first
```ruby:Ruby
[5, 6, 7].first  # => 5
```
```rust:Rust
let v = vec![5, 6, 7];
v.first()  // => Some(5)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.first%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first)

## last → last
```ruby:Ruby
[5, 6, 7].last  # => 7
```
```rust:Rust
let v = vec![5, 6, 7];
v.last()  // => Some(7)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last)

## slice → get
```ruby:Ruby
a = [5, 6, 7, 8]
a.slice(1)     # => 6
a.slice(1..2)  # => [6, 7]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
v.get(1)      // => Some(6)
v.get(1..=2)  // => Some([6, 7])
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.get%281%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.get%281..%3D2%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get)

## ? → swap
```ruby:Ruby
v = [5, 6, 7, 8]
v[2], v[1] = v[1], v[2]
v  # => [5, 7, 6, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8];
v.swap(1, 2)  // => ()
v             // => [5, 7, 6, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.swap%281%2C+2%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap)

## each_cons → windows
```ruby:Ruby
[5, 6, 7, 8].each_cons(2).to_a  # => [[5, 6], [6, 7], [7, 8]]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
v.windows(2).collect::<Vec<_>>()  // => [[5, 6], [6, 7], [7, 8]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.windows%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows)

## each_slice → chunks
```ruby:Ruby
[5, 6, 7, 8, 9].each_slice(2).to_a  # => [[5, 6], [7, 8], [9]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
v.chunks(2).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.chunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks)

## reverse.each_slice + reverse → rchunks
```ruby:Ruby
[5, 6, 7, 8, 9].reverse.each_slice(2).collect(&:reverse)  # => [[8, 9], [6, 7], [5]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
v.rchunks(2).collect::<Vec<_>>()  // => [[8, 9], [6, 7], [5]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.rchunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rchunks)

## chunk → split
```ruby:Ruby
v = [5, 6, 0, 7, 8, 0, 9]
v.chunk { |e| e == 0 ? nil : true }.map(&:last) # => [[5, 6], [7, 8], [9]]

require "active_support/core_ext/array/grouping"
v.split(0) # => [[5, 6], [7, 8], [9]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.split(|&e| e == 0).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.split%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split)

## slice_after → split_inclusive
```ruby:Ruby
[5, 6, 0, 7, 8, 0, 9].slice_after { |e| e == 0 }.to_a # => [[5, 6, 0], [7, 8, 0], [9]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()  // => [[5, 6, 0], [7, 8, 0], [9]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.split_inclusive%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive)

## reverse.chunk + reverse → rsplit
```ruby:Ruby
[5, 6, 0, 7, 8, 0, 9].reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # => [[9], [7, 8], [5, 6]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // => [[9], [7, 8], [5, 6]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.rsplit%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit)

## ? → splitn
```ruby:Ruby
"5607809".split("0", 2)  # => ["56", "7809"]

v = [5, 6, 0, 7, 8, 0, 9]
n = 2
v = v.slice_after { |e| e == 0 }
v = [
  *v.take(n - 1).collect { |e| e[0..-2] },
  v.drop(n - 1).flatten(1),
]
v # => [[5, 6], [7, 8, 0, 9]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.splitn(2, |&e| e == 0).collect::<Vec<_>>()  // => [[5, 6], [7, 8, 0, 9]]
```
String#split の配列版と考えるとわかりやすい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.splitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.splitn)

## ? → rsplitn
```ruby:Ruby
"5607809".reverse.split("0", 2).collect(&:reverse)  # => ["9", "56078"]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>()  // => [[9], [5, 6, 0, 7, 8]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.rsplitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn)

## include? → contains
```ruby:Ruby
[5, 6, 7].include?(6)  # => true
```
```rust:Rust
[5, 6, 7].contains(&6)  // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.contains%28%266%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains)

## ? → starts_with
```ruby:Ruby
[5, 6, 7].first([5, 6].length) == [5, 6]  # => true
"567".start_with?("56")                  # => true
```
```rust:Rust
[5, 6, 7].starts_with(&[5, 6])  // => true
```
String#start_with? の配列版と考えるとわかりやすい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.starts_with%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with)

## ? → ends_with
```ruby:Ruby
[5, 6, 7].last([6, 7].length) == [6, 7]  # => true
"567".end_with?("67")                    # => true
```
```rust:Rust
[5, 6, 7].ends_with(&[6, 7])  // => true
```
String#end_with? の配列版と考えるとわかりやすい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.ends_with%28%26%5B6%2C+7%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with)

## ? → strip_prefix
```ruby:Ruby
"567".delete_prefix("67")      # => "567"

a = [5, 6, 7]
b = [5, 6]
if a.first(b.size) == b
  a.drop(b.size)                # => [7]
end
```
```rust:Rust
[5, 6, 7].strip_prefix(&[5, 6])  // => Some([7])
```
String#delete_prefix の配列版と考えるとわかりやすい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.strip_prefix%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix)

## ? → strip_suffix
```ruby:Ruby
"567".delete_suffix("67")      # => "5"

a = [5, 6, 7]
b = [6, 7]
if a.last(b.size) == b
  a.take(a.size - b.size)      # => [5]
end
```
```rust:Rust
[5, 6, 7].strip_suffix(&[6, 7])  // => Some([5])
```
String#delete_suffix の配列版と考えるとわかりやすい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.strip_suffix%28%26%5B6%2C+7%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix)

## ? → binary_search
```ruby:Ruby
[5, 7, 9].bsearch { |e| e >= 6 } # => 7
```
```rust:Rust
[5, 7, 9].binary_search(&7)  // => Ok(1)
```
bsearch とは使い勝手がぜんぜん違う。contains の速い版って感じだろうか。
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search%28%267%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search)

## ? → binary_search_by
```rust:Rust
[5, 7, 9].binary_search_by(|e| e.cmp(&7))  // => Ok(1)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%267%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by)

## ? → binary_search_by_key
```rust:Rust
[(0, 5), (0, 7), (0, 9)].binary_search_by_key(&7, |&(_, e)| e)  // => Ok(1)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%280%2C+5%29%2C+%280%2C+7%29%2C+%280%2C+9%29%5D.binary_search_by_key%28%267%2C+%7C%26%28_%2C+e%29%7C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by_key)

## ? → select_nth_unstable
```rust:Rust
let mut v = vec![6, 8, 7, 5];
v.select_nth_unstable(0); // [0] が 5 になることだけは保証する
v  // => [5, 8, 7, 6]
```
指定のインデックスの値だけはソート後と同じにする(？)
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0Av.select_nth_unstable%280%29%3B+%2F%2F+%5B0%5D+%E3%81%8C+5+%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%93%E3%81%A8%E3%81%A0%E3%81%91%E3%81%AF%E4%BF%9D%E8%A8%BC%E3%81%99%E3%82%8B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable)

## ? → select_nth_unstable_by
```rust:Rust
let mut v = vec![6, 8, 7, 5];
v.select_nth_unstable_by(0, |a, b| a.cmp(b));
v  // => [5, 8, 7, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0Av.select_nth_unstable_by%280%2C+%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by)

## ? → select_nth_unstable_by_key
```rust:Rust
let mut v = vec![6_i32, 8, 7, 5];
v.select_nth_unstable_by_key(0, |e| e.abs());
v  // => [5, 8, 7, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6_i32%2C+8%2C+7%2C+5%5D%3B%0Av.select_nth_unstable_by_key%280%2C+%7Ce%7C+e.abs%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key)

## rotate! → rotate_left
```ruby:Ruby
v = [5, 6, 7]
v.rotate!
v  # => [6, 7, 5]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.rotate_left(1);
v  // => [6, 7, 5]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.rotate_left%281%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left)

## rotate!(-n) → rotate_right
```ruby:Ruby
v = [5, 6, 7]
v.rotate!(-1)
v  # => [7, 5, 6]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.rotate_right(1);
v  // => [7, 5, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.rotate_right%281%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right)

## fill → fill
```ruby:Ruby
v = [5, 6, 7]
v.fill(8)
v # => [8, 8, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.fill(8);
v  // => [8, 8, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.fill%288%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill)

## fill { } → fill_with
```ruby:Ruby
v = [5, 6, 7]
v.fill { 8 }
v # => [8, 8, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.fill_with(|| 8);
v  // => [8, 8, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.fill_with%28%7C%7C+8%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with)

## sort! → sort
```ruby:Ruby
v = vec![7, 6, 5];
v.sort!
v  # => 
# ~> -:1:in `<main>': undefined method `vec!' for main:Object (NoMethodError)
```
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort();
v  // => [5, 6, 7]
```
どっちかと言えば sort! は sort_unstable の方が近い
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0Av.sort%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort)

## sort! { } → sort_by
```ruby:Ruby
v = [7, 6, 5]
v.sort! { |a, b| a <=> b }
v  # => [5, 6, 7]
```
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort_by(|a, b| a.cmp(b));
v  // => [5, 6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0Av.sort_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by)

## ? → sort_by_key
```rust:Rust
let mut v = vec![7_i32, -6, 5];
let mut c = 0;
v.sort_by_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 6
```
クロージャが要素数よりも多く呼ばれるので注意
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0Alet+mut+c+%3D+0%3B%0Av.sort_by_key%28%7Ce%7C+%7B+c+%2B%3D+1%3B+e.abs%28%29+%7D%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key)

## sort_by! → sort_by_cached_key
```ruby:Ruby
v = [7, -6, 5]
v.sort_by!(&:abs)
v  # => [5, -6, 7]
```
```rust:Rust
let mut v = vec![7_i32, -6, 5];
let mut c = 0;
v.sort_by_cached_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 3
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0Alet+mut+c+%3D+0%3B%0Av.sort_by_cached_key%28%7Ce%7C+%7B+c+%2B%3D+1%3B+e.abs%28%29+%7D%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key)

## sort! → sort_unstable
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort_unstable();
v  // => [5, 6, 7]
```
sort_unstable 系は等しい要素も並び換えるけど計算量が少ないらしい。等しい要素も並び換える点はRubyのソートも同じ。
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0Av.sort_unstable%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable)

## ? → sort_unstable_by
```rust:Rust
let mut v = vec![6, 8, 7, 5];
v.sort_unstable_by(|a, b| a.cmp(b));
v  // => [5, 6, 7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0Av.sort_unstable_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by)

## ? → sort_unstable_by_key
```rust:Rust
let mut v = vec![7_i32, -6, 5];
let mut c = 0;
v.sort_unstable_by_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 6
```
クロージャが要素数よりも多く呼ばれるので注意
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0Alet+mut+c+%3D+0%3B%0Av.sort_unstable_by_key%28%7Ce%7C+%7B+c+%2B%3D+1%3B+e.abs%28%29+%7D%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by_key)

## ? → is_sorted
```ruby:Ruby
v = [5, 6, 7]
v == v.sort  # => true
```
```rust:Rust (nightly)
[5, 6, 7].is_sorted()  // => true
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted)
