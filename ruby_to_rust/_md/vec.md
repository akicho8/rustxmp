
## ? → take
```ruby:Ruby
v = [5, 6, 7, 8]
v.slice!(...2) # => [5, 6]
v              # => [7, 8]

v = [5, 6, 7, 8]
v.slice!(2...) # => [7, 8]
v              # => [5, 6]
```
```rust:Rust (nightly)
let mut v: &[_] = &[5, 6, 7, 8];
v.take(..2)  // => Some([5, 6])
v            // => [7, 8]

let mut v: &[_] = &[5, 6, 7, 8];
v.take(2..)  // => Some([7, 8])
v            // => [5, 6]
```
引数は OneSidedRange 型なので 1..=2 とか書くとエラーになる
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.take%28..2%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%0Alet+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%5D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v.take%282..%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take)
