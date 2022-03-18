# ## `partition` → `iter.partition_map`
# ```ruby:Ruby
# [5, 6, 7, 8].map { |e| e }.partition(&:even?)  # => [[6, 8], [5, 7]]
# ```
# ```rust:Rust
# use itertools::Itertools;
# use itertools::Either;
# let (even, odd): (Vec<_>, Vec<_>) = [5, 6, 7, 8].iter().partition_map(|&e| {
#     if e % 2 == 0 {
#         Either::Left(e)
#     } else {
#         Either::Right(e)
#     }
# });
# even  // => [6, 8]
# odd   // => [5, 7]

[5, 6, 7, 8].partition do |e|
