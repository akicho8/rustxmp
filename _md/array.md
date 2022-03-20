| Ruby        | Rust                   |                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|-------------|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| map(&:to_f) | iter.map_into::<f64>() | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.map_into) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++vec%21%5B5%2C+6%2C+7%5D%0A++++++++++++.into_iter%28%29%0A++++++++++++.map_into%3A%3A%3Cf64%3E%28%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021) |


## `map(&:to_f)` → `iter.map_into::<f64>()`
```ruby:Ruby
[5, 6, 7].map(&:to_f)  # => [5.0, 6.0, 7.0]
```
```rust:Rust
use itertools::Itertools;
vec![5, 6, 7].into_iter().map_into::<f64>().collect::<Vec<_>>() // => [5.0, 6.0, 7.0]
```
逆に小数を整数にしようとしたらできなかった
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.map_into) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++vec%21%5B5%2C+6%2C+7%5D%0A++++++++++++.into_iter%28%29%0A++++++++++++.map_into%3A%3A%3Cf64%3E%28%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)
