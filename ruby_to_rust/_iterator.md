
## partition
```ruby:Ruby
[5, 6, 7, 8].partition(&:even?)  # => [[6, 8], [5, 7]]
```
```rust:Rust
let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
even  // => [6, 8]
odd   // => [5, 7]
```
[Rust Playground で確認する](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+%28even%2C+odd%29%3A+%28Vec%3Cisize%3E%2C+Vec%3Cisize%3E%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.partition%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+even%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+odd%29%3B%0A%7D%0A&version=nightly&edition=2021)

## ? → partition_in_place
```rust:Rust (nightly)
let mut ary = [2, 3, 4, 5, 6];
let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
index  // => 3
ary    // => [2, 6, 4, 5, 3]
ary[..index].iter().collect::<Vec<_>>() // => [2, 6, 4]
ary[index..].iter().collect::<Vec<_>>() // => [5, 3]
```
元の配列を破壊的に並び換える。ドキュメントでは個数を返すと言っているがピンとこないので「境界のインデックスを返す」と考えた方がよさそう。
[Rust Playground で確認する](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_partition_in_place%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+ary+%3D+%5B2%2C+3%2C+4%2C+5%2C+6%5D%3B%0Alet+index+%3D+ary.iter_mut%28%29.partition_in_place%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+index%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+ary%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+ary%5B..index%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+ary%5Bindex..%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## ? → is_partitioned
```rust:Rust (nightly)
[2, 3, 4, 5, 6].iter().is_partitioned(|&e| e % 2 == 0) // => false
[2, 4, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0) // => true
[4, 2, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0) // => true
```
すでに partition_in_place を適用した結果と同じなら true
[Rust Playground で確認する](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_is_partitioned%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%2C+5%2C+6%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+4%2C+6%2C+3%2C+5%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B4%2C+2%2C+6%2C+3%2C+5%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
