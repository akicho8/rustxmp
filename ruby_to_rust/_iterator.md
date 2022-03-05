
## flatten
```ruby:Ruby
[[2, 3], [4, 5]].flatten(1) # => [2, 3, 4, 5]
```
```rust:Rust
[[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>() // => [2, 3, 4, 5]
```
[Rust Playground で確認する](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B2%2C+3%5D%2C+%5B4%2C+5%5D%5D.iter%28%29.flatten%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## flat_map
```ruby:Ruby
[[2, 3], [4, 5]].flat_map(&:itself) # => [2, 3, 4, 5]
```
```rust:Rust
[[2, 3], [4, 5]].iter().flat_map(|e| e).collect::<Vec<_>>() // => [2, 3, 4, 5]
```
[Rust Playground で確認する](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B2%2C+3%5D%2C+%5B4%2C+5%5D%5D.iter%28%29.flat_map%28%7Ce%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
