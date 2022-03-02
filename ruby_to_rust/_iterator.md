
## each → iter
```ruby:Ruby
[2, 3].each # => #<Enumerator: [2, 3]:each>
```
```rust:Rust
[2, 3].iter() // => Iter([2, 3])
```
[Rust Playground で確認する](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## each → for_each
```ruby:Ruby
["a", "b", "c"].each do |e|
  p e
end
# >> "a"
# >> "b"
# >> "c"
```
```rust:Rust
["a", "b", "c"].iter().for_each(|e| {
    println!("{:?}", e);
})
// >> "a"
// >> "b"
// >> "c"
```
欲しかったのはこれ。for じゃない
[Rust Playground で確認する](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.for_each%28%7Ce%7C+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+e%29%3B%0A%7D%29%0A%7D%0A&version=nightly&edition=2021)
