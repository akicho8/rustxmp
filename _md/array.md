| Ruby    | Rust                  |                                                                                                                                                                                                                                                                                                                                               |
|---------|-----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [...-n] | iter.dropping_back(n) | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.dropping_back) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%2C+9%5D.iter%28%29.dropping_back%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |
| drop(n) | iter.dropping         | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.dropping) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%2C+9%5D.iter%28%29.dropping%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021)           |


## `[...-n]` → `iter.dropping_back(n)`
```ruby:Ruby
[5, 6, 7, 8, 9][...-2]  # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().dropping_back(2) // => Iter([5, 6, 7])
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.dropping_back) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%2C+9%5D.iter%28%29.dropping_back%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `drop(n)` → `iter.dropping`
```ruby:Ruby
[5, 6, 7, 8, 9].drop(2)  # => [7, 8, 9]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().dropping(2) // => Iter([7, 8, 9])
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.dropping) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%2C+9%5D.iter%28%29.dropping%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
