| Ruby         | Rust               |                                                                                                                                                                                                                                                                                                                                                                   |
|--------------|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| sort.take(n) | iter.k_smallest(n) | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.k_smallest) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B6%2C+7%2C+5%5D.iter%28%29.k_smallest%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |


## `sort.take(n)` → `iter.k_smallest(n)`
```ruby:Ruby
[6, 7, 5].sort.take(2) # => [5, 6]
```
```rust:Rust
use itertools::Itertools;
[6, 7, 5].iter().k_smallest(2).collect::<Vec<_>>() // => [5, 6]
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.k_smallest) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B6%2C+7%2C+5%5D.iter%28%29.k_smallest%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
