
## new → new
```ruby:Ruby
Array.new # => []
```
```rust:Rust
Vec::<isize>::new() // => []
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+Vec%3A%3A%3Cisize%3E%3A%3Anew%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.new)

## push → push
```rust:Rust
let mut v = vec![5, 6];
v.push(7);
v  // => [5, 6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0Av.push%287%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.push)

## ? → pop
```rust:Rust
// ▼pop: pop
let mut v = vec![5, 6, 7];
v.pop()  // => Some(7)
v  // => [5, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCpop%3A+pop%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.pop%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.pop)

## ? → append
```rust:Rust
// ▼append: concat
let mut a = vec![5, 6];
let mut b = vec![7, 8];
a.append(&mut b);
a  // => [5, 6, 7, 8]
b  // => []
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCappend%3A+concat%0Alet+mut+a+%3D+vec%21%5B5%2C+6%5D%3B%0Alet+mut+b+%3D+vec%21%5B7%2C+8%5D%3B%0Aa.append%28%26mut+b%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append)

## ? → is_empty
```rust:Rust
// ▼is_empty: empty?
let v: Vec<isize> = vec![];
v.is_empty()  // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCis_empty%3A+empty%3F%0Alet+v%3A+Vec%3Cisize%3E+%3D+vec%21%5B%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.is_empty%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty)

## ? → clear
```rust:Rust
// ▼clear: clear
let mut v = vec![5, 6];
v.clear();
v  // => []
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCclear%3A+clear%0Alet+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0Av.clear%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear)

## ? → len
```rust:Rust
// ▼len: length
let v = vec![5, 6];
v.len()  // => 2
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BClen%3A+length%0Alet+v+%3D+vec%21%5B5%2C+6%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len)

## ? → split_at
```rust:Rust
// ▼split_at: ?
let v = vec![5, 6, 7, 8];
let (left, right) = v.split_at(2);
left  // => [5, 6]
right  // => [7, 8]
v  // => [5, 6, 7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsplit_at%3A+%3F%0Alet+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Alet+%28left%2C+right%29+%3D+v.split_at%282%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+left%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+right%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at)

## ? → split_off
```rust:Rust
// ▼split_off: ?
let mut a = vec![5, 6, 7, 8];
let b = a.split_off(2);
a  // => [5, 6]
b  // => [7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsplit_off%3A+%3F%0Alet+mut+a+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Alet+b+%3D+a.split_off%282%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off)

## ? → first
```rust:Rust
// ▼first: first
let v = vec![5, 6, 7];
v.first()  // => Some(5)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCfirst%3A+first%0Alet+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.first%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first)

## ? → last
```rust:Rust
// ▼last: last
let v = vec![5, 6, 7];
v.last()  // => Some(7)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BClast%3A+last%0Alet+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last)

## ? → get
```rust:Rust
// ▼get: at
let v = vec![5, 6, 7, 8];
v.get(1)  // => Some(6)
v.get(1..=2)  // => Some([6, 7])
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCget%3A+at%0Alet+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.get%281%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.get%281..%3D2%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get)

## ? → swap
```rust:Rust
// ▼swap: ?
let mut v = vec![5, 6, 7, 8];
v.swap(1, 2)  // => ()
v  // => [5, 7, 6, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCswap%3A+%3F%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.swap%281%2C+2%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap)

## ? → windows
```rust:Rust
// ▼windows: each_cons(2).to_a
let v = vec![5, 6, 7, 8];
v.windows(2).collect::<Vec<_>>()  // => [[5, 6], [6, 7], [7, 8]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCwindows%3A+each_cons%282%29.to_a%0Alet+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.windows%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows)

## ? → chunks
```rust:Rust
// ▼chunks: each_slice(2).to_a
let v = vec![5, 6, 7, 8, 9];
v.chunks(2).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCchunks%3A+each_slice%282%29.to_a%0Alet+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.chunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks)

## ? → rchunks
```rust:Rust
// ▼rchunks: ?
let v = vec![5, 6, 7, 8, 9];
v.rchunks(2).collect::<Vec<_>>()  // => [[8, 9], [6, 7], [5]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCrchunks%3A+%3F%0Alet+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.rchunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rchunks)

## ? → split
```rust:Rust
// ▼split: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.split(|&e| e == 0).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsplit%3A+%3F%0Alet+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.split%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split)

## ? → split_inclusive
```rust:Rust
// ▼split_inclusive: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()  // => [[5, 6, 0], [7, 8, 0], [9]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsplit_inclusive%3A+%3F%0Alet+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.split_inclusive%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive)

## ? → rsplit
```rust:Rust
// ▼rsplit: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // => [[9], [7, 8], [5, 6]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCrsplit%3A+%3F%0Alet+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.rsplit%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit)

## ? → splitn
```rust:Rust
// ▼splitn: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.splitn(2, |&e| e == 0).collect::<Vec<_>>()  // => [[5, 6], [7, 8, 0, 9]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsplitn%3A+%3F%0Alet+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.splitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.splitn)

## ? → rsplitn
```rust:Rust
// ▼rsplitn: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>()  // => [[9], [5, 6, 0, 7, 8]]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCrsplitn%3A+%3F%0Alet+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.rsplitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn)

## ? → contains
```rust:Rust
// ▼contains: ?
[5, 6, 7].contains(&6)  // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCcontains%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.contains%28%266%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains)

## ? → starts_with
```rust:Rust
// ▼starts_with: ?
[5, 6, 7].starts_with(&[5, 6])  // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCstarts_with%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.starts_with%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with)

## ? → ends_with
```rust:Rust
// ▼ends_with: ?
[5, 6, 7].ends_with(&[6, 7])  // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCends_with%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.ends_with%28%26%5B6%2C+7%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with)

## ? → strip_prefix
```rust:Rust
// ▼strip_prefix: ?
[5, 6, 7, 8].strip_prefix(&[5, 6])  // => Some([7, 8])
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCstrip_prefix%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_prefix%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix)

## ? → strip_suffix
```rust:Rust
// ▼strip_suffix: ?
[5, 6, 7, 8].strip_suffix(&[7, 8])  // => Some([5, 6])
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCstrip_suffix%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_suffix%28%26%5B7%2C+8%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix)

## ? → binary_search
```rust:Rust
// ▼binary_search: ?
[5, 6, 7, 8].binary_search(&7)  // => Ok(2)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCbinary_search%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.binary_search%28%267%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search)

## ? → select_nth_unstable
```rust:Rust
// ▼select_nth_unstable: ?
let mut v = vec![6, 8, 7, 5];
v.select_nth_unstable(0);
v  // => [5, 8, 7, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCselect_nth_unstable%3A+%3F%0Alet+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0Av.select_nth_unstable%280%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable)

## ? → select_nth_unstable_by
```rust:Rust
// ▼select_nth_unstable_by: ?
let mut v = vec![6, 8, 7, 5];
v.select_nth_unstable_by(0, |a, b| a.cmp(b));
v  // => [5, 8, 7, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCselect_nth_unstable_by%3A+%3F%0Alet+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0Av.select_nth_unstable_by%280%2C+%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by)

## ? → select_nth_unstable_by_key
```rust:Rust
// ▼select_nth_unstable_by_key: ?
let mut v = vec![6_i32, 8, 7, 5];
v.select_nth_unstable_by_key(0, |e| e.abs());
v  // => [5, 8, 7, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCselect_nth_unstable_by_key%3A+%3F%0Alet+mut+v+%3D+vec%21%5B6_i32%2C+8%2C+7%2C+5%5D%3B%0Av.select_nth_unstable_by_key%280%2C+%7Ce%7C+e.abs%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key)

## ? → rotate_left
```rust:Rust
// ▼rotate_left: ?
let mut v = vec![5, 6, 7];
v.rotate_left(1);
v  // => [6, 7, 5]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCrotate_left%3A+%3F%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.rotate_left%281%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left)

## ? → rotate_right
```rust:Rust
// ▼rotate_right: ?
let mut v = vec![5, 6, 7];
v.rotate_right(1);
v  // => [7, 5, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCrotate_right%3A+%3F%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.rotate_right%281%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right)

## ? → fill
```rust:Rust
// ▼fill: ?
let mut v = vec![5, 6, 7];
v.fill(8);
v  // => [8, 8, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCfill%3A+%3F%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.fill%288%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill)

## ? → fill_with
```rust:Rust
// ▼fill_with: ?
let mut v = vec![5, 6, 7];
v.fill_with(|| 8);
v  // => [8, 8, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCfill_with%3A+%3F%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Av.fill_with%28%7C%7C+8%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with)

## ? → sort
```rust:Rust
// ▼sort: ?
let mut v = vec![7, 6, 5];
v.sort();
v  // => [5, 6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsort%3A+%3F%0Alet+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0Av.sort%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort)

## ? → sort_by
```rust:Rust
// ▼sort_by: ?
let mut v = vec![7, 6, 5];
v.sort_by(|a, b| a.cmp(b));
v  // => [5, 6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsort_by%3A+%3F%0Alet+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0Av.sort_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by)

## ? → sort_by_key
```rust:Rust
// ▼sort_by_key: ?
let mut v = vec![7_i32, -6, 5];
v.sort_by_key(|e| e.abs());
v  // => [5, -6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsort_by_key%3A+%3F%0Alet+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0Av.sort_by_key%28%7Ce%7C+e.abs%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key)

## ? → sort_by_cached_key
```rust:Rust
// ▼sort_by_cached_key: ?
let mut v = vec![7_i32, -6, 5];
v.sort_by_cached_key(|e| e.abs());
v  // => [5, -6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsort_by_cached_key%3A+%3F%0Alet+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0Av.sort_by_cached_key%28%7Ce%7C+e.abs%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key)

## ? → sort_unstable
```rust:Rust
// ▼sort_unstable: ?
let mut v = vec![6, 8, 7, 5];
v.sort_unstable();
v  // => [5, 6, 7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsort_unstable%3A+%3F%0Alet+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0Av.sort_unstable%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable)

## ? → sort_unstable_by
```rust:Rust
// ▼sort_unstable_by: ?
let mut v = vec![6, 8, 7, 5];
v.sort_unstable_by(|a, b| a.cmp(b));
v  // => [5, 6, 7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsort_unstable_by%3A+%3F%0Alet+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0Av.sort_unstable_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by)

## ? → sort_unstable_by_key
```rust:Rust
// ▼sort_unstable_by_key: ?
let mut v = vec![-6_i32, 8, -7, 5];
v.sort_unstable_by_key(|e| e.abs());
v  // => [5, -6, -7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCsort_unstable_by_key%3A+%3F%0Alet+mut+v+%3D+vec%21%5B-6_i32%2C+8%2C+-7%2C+5%5D%3B%0Av.sort_unstable_by_key%28%7Ce%7C+e.abs%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by_key)

## ? → is_sorted
```rust:Rust (nightly)
// ▼is_sorted: ?
[5, 6, 7].is_sorted()  // => true
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCis_sorted%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted)

## ? → is_sorted_by
```rust:Rust (nightly)
// ▼is_sorted_by: ?
[5, 6, 7].is_sorted_by(|a, b| a.partial_cmp(b))  // => true
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCis_sorted_by%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by)

## ? → is_sorted_by_key
```rust:Rust (nightly)
// ▼is_sorted_by_key: ?
[5_i32, -6, 7].is_sorted_by_key(|e| e.abs())  // => true
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCis_sorted_by_key%3A+%3F%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5_i32%2C+-6%2C+7%5D.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by_key)

## ? → take
```rust:Rust (nightly)
// ▼take: ?
let mut v: &[_] = &[5, 6, 7];
v.take(..2)  // => Some([5, 6])
v            // => [7]
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCtake%3A+%3F%0Alet+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.take%28..2%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take)

## ? → take_first
```rust:Rust (nightly)
let mut v: &[_] = &[5, 6, 7];
v.take_first()  // => Some(5)
v               // => [6, 7]
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.take_first%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_first)

## ? → take_last
```rust:Rust (nightly)
let mut v: &[_] = &[5, 6, 7];
v.take_last()  // => Some(7)
v              // => [5, 6]
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.take_last%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_last)

## ? → to_vec
```rust:Rust
let v = vec![5, 6, 7];
v.to_vec()  // => [5, 6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.to_vec%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.to_vec)

## ? → concat
```rust:Rust
// ▼concat:
["foo", "bar"].concat()  // => "foobar"
[["foo"], ["bar"]].concat()  // => ["foo", "bar"]
[[5, 6], [7, 8]].concat()  // => [5, 6, 7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCconcat%3A%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%22foo%22%2C+%22bar%22%5D.concat%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B%22foo%22%5D%2C+%5B%22bar%22%5D%5D.concat%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.concat%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat)

## ? → join
```rust:Rust
// ▼join
["foo", "bar"].join("-")  // => "foo-bar"
[[5, 6], [7, 8]].join(&0)  // => [5, 6, 0, 7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCjoin%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%22foo%22%2C+%22bar%22%5D.join%28%22-%22%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.join%28%260%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join)

## ? → group_by
```rust:Rust (nightly)
// ▼group_by: chunk 相当
[5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()  // => [[5], [6, 6], [5]]
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_group_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCgroup_by%3A+chunk+%E7%9B%B8%E5%BD%93%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+6%2C+5%5D.group_by%28%7Ca%2C+b%7C+a+%3D%3D+b%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by)

## ? → swap_remove
```rust:Rust
// ▼swap_remove(i): iの位置を削除して詰める。O(1) なかわりに順序が変わる。最後の要素が来る
let mut v = vec![5, 6, 7, 8];
v.swap_remove(0)  // => 5
v  // => [8, 6, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCswap_remove%28i%29%3A+i%E3%81%AE%E4%BD%8D%E7%BD%AE%E3%82%92%E5%89%8A%E9%99%A4%E3%81%97%E3%81%A6%E8%A9%B0%E3%82%81%E3%82%8B%E3%80%82O%281%29+%E3%81%AA%E3%81%8B%E3%82%8F%E3%82%8A%E3%81%AB%E9%A0%86%E5%BA%8F%E3%81%8C%E5%A4%89%E3%82%8F%E3%82%8B%E3%80%82%E6%9C%80%E5%BE%8C%E3%81%AE%E8%A6%81%E7%B4%A0%E3%81%8C%E6%9D%A5%E3%82%8B%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.swap_remove%280%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove)

## ? → remove
```rust:Rust
// ▼remove(i): iの位置を削除して詰める。
let mut v = vec![5, 6, 7, 8];
v.remove(0)  // => 5
v  // => [6, 7, 8]
```
O(n) な代わりに順序は変わらない
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E2%96%BCremove%28i%29%3A+i%E3%81%AE%E4%BD%8D%E7%BD%AE%E3%82%92%E5%89%8A%E9%99%A4%E3%81%97%E3%81%A6%E8%A9%B0%E3%82%81%E3%82%8B%E3%80%82%0Alet+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.remove%280%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove)

## ? → insert
```rust:Rust
let mut v = vec![5, 7, 8];
v.insert(1, 6);
v  // => [5, 6, 7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+7%2C+8%5D%3B%0Av.insert%281%2C+6%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert)

## select! → retain
```rust:Rust
let mut v = vec![-1, -1, 1, 1];
v.retain(|&e| e > 0);
v  // => [1, 1]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B-1%2C+-1%2C+1%2C+1%5D%3B%0Av.retain%28%7C%26e%7C+e+%3E+0%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain)
