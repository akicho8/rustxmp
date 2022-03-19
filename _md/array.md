| Ruby    | Rust     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|---------|----------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| sort_by | iter.tee | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.tee) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++let+%28a%2C+b%29+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.tee%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |


## `sort_by` → `iter.tee`
```ruby:Ruby
module Enumerable
  def tee
    [to_enum, to_enum]
  end
end

a, b = [5, 6, 7].tee
a.entries  # => [5, 6, 7]
b.entries  # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
let (a, b) = [5, 6, 7].iter().tee();
a.collect::<Vec<_>>()  // => [5, 6, 7]
b.collect::<Vec<_>>()  // => [5, 6, 7]
```
何がしたいのかよくわからないメソッド
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.tee) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++let+%28a%2C+b%29+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.tee%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
