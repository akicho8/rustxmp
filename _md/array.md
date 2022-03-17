| Ruby              | Rust               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|-------------------|--------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| find \\|\\| first | iter.find_or_first | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_or_first) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_first%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_first%28%7C%26%26e%7C+e+%3D%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |
| find \\|\\| last  | iter.find_or_last  | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_or_last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_last%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_last%28%7C%26%26e%7C+e+%3D%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)    |


## `find || first` → `iter.find_or_first`
```ruby:Ruby
module Enumerable
  def find_or_first(&block)
    find(&block) || first
  end
end

[5, 6, 7].find_or_first { |e| e == 6 } # => 6
[5, 6, 7].find_or_first { |e| e == 0 } # => 5
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().find_or_first(|&&e| e == 6) // => Some(6)
[5, 6, 7].iter().find_or_first(|&&e| e == 0) // => Some(5)
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_or_first) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_first%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_first%28%7C%26%26e%7C+e+%3D%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `find || last` → `iter.find_or_last`
```ruby:Ruby
module Enumerable
  def find_or_last(&block)
    find(&block) || last
  end
end

[5, 6, 7].find_or_last { |e| e == 6 } # => 6
[5, 6, 7].find_or_last { |e| e == 0 } # => 7
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().find_or_last(|&&e| e == 6) // => Some(6)
[5, 6, 7].iter().find_or_last(|&&e| e == 0) // => Some(7)
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_or_last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_last%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_or_last%28%7C%26%26e%7C+e+%3D%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
