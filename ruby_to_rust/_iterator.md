
## ? → eq ne lt le gt ge
```rust:Rust
[1].iter().eq([1, 2].iter())  // => false
[1].iter().ne([1, 2].iter())  // => true
[1].iter().lt([1, 2].iter())  // => true
[1].iter().le([1, 2].iter())  // => true
[1].iter().gt([1, 2].iter())  // => false
[1].iter().ge([1, 2].iter())  // => false
```
[Rust Playground で確認する](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.eq%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ne%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.lt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.le%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.gt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ge%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## ? → eq_by
```ruby:Ruby
it = [4, 6].to_enum
[2, 3].all? { |a; b| b = it.next; a + a == b }             # => true
[2, 3].each.with_index.all? { |e, i| e + e == [4, 6][i] }  # => true
[2, 3].collect { |e| e + e } == [4, 6]                     # => true
```
```rust:Rust (nightly)
[2, 3].iter().eq_by(&[4, 6], |&a, &b| a + a == b) // => true
```
これは使いづらい
[Rust Playground で確認する](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.eq_by%28%26%5B4%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a+%2B+a+%3D%3D+b%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
