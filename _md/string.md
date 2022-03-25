---
:title: Ruby脳向けRustの文字列系メソッド対応
:emoji: "\U0001F916"
:type: tech
:topics:
- Rust
- Ruby
- String
- 文字列
:published: false

| Ruby | Rust       |                                                                                                                                                                                                                                                                                                            |
|------|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ?    | as_mut_ptr | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_ptr) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.as_mut_ptr%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |


## `?` → `as_mut_ptr`
```rust:Rust
let mut s = String::from("foo");
s.as_mut_ptr() // => 0x7fbbe6c05eb0
```
文字を更新するとき用
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_ptr) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.as_mut_ptr%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
