
### ? → intersperse
セパレータは毎回固定で良いとき用
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
[Rust Playground で確認する](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse%28%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

### ? → intersperse_with
セパレータを動的に切り替えたいとき用
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
[Rust Playground で確認する](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse_with%28%7C%7C%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
