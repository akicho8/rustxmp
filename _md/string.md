| Ruby  | Rust     |
|-------|----------|
| bytes | as_bytes |


## `bytes` → `as_bytes`
```ruby:Ruby
"abc".bytes # => [97, 98, 99]
```
```rust:Rust
"abc".as_bytes() // => [97, 98, 99]
b"abc"           // => [97, 98, 99]
```
型変換？ 表記がアレだけど `b` をつけても同じ結果になる。
 
