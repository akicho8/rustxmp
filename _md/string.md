| Ruby  | Rust             |                                                                                                                                                                                                                                                                                                                                                                                     |
|-------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| split | split_whitespace | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_whitespace) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Afrom%28%22+foo%5Cr%5Cn+bar%E3%80%80baz%5Cn%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.split_whitespace%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |


## `split` → `split_whitespace`
```ruby:Ruby
" foo\r\n bar　baz\n".gsub(/\p{Space}+/, " ").split # => ["foo", "bar", "baz"]
```
```rust:Rust
let s = String::from(" foo\r\n bar　baz\n");
s.split_whitespace().collect::<Vec<_>>() // => ["foo", "bar", "baz"]
```
Rust の方は全角スペースに対応している
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_whitespace) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Afrom%28%22+foo%5Cr%5Cn+bar%E3%80%80baz%5Cn%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.split_whitespace%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
