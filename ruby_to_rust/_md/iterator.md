
## each → iter
```ruby:Ruby
[2, 3].each # => #<Enumerator: [2, 3]:each>
```
```rust:Rust
[2, 3].iter() // => Iter([2, 3])
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) 

## next → next
```ruby:Ruby
it = [2, 3].each
it.next # => 2
it.next # => 3
it.next rescue $! # => #<StopIteration: iteration reached an end>
```
```rust:Rust
let mut it = [2, 3].iter();
it.next() // => Some(2)
it.next() // => Some(3)
it.next() // => None
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B2%2C+3%5D.iter%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#tymethod.next)

## ? → size_hint
```rust:Rust
let it = ["a", "b", "c"].iter();
it.size_hint() // => (3, Some(3))
```
イテレータの残りの長さの境界(下限と上限)を返す(？)
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.size_hint%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint)

## peek → peek
```ruby:Ruby
it = ["a", "b"].each
it.next  # => "a"
it.peek  # => "b"
it.next  # => "b"
```
```rust:Rust
let mut it = ["a", "b"].iter().peekable();
it.next()  // => Some("a")
it.peek()  // => Some("b")
it.next()  // => Some("b")
```
もともと peek() はなくて peekable() すると peek() が生えるっぽい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B%22a%22%2C+%22b%22%5D.iter%28%29.peekable%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.peek%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.peekable)

## ? → nth
```rust:Rust
let mut it = ['a', 'b', 'c', 'd'].iter();
it.nth(1)  // => Some('b')
it.nth(1)  // => Some('d')
it.nth(1)  // => None
```
at(i) 相当かと思いきや内部でポインタを進めてからその位置の値を返すようだ
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B%27a%27%2C+%27b%27%2C+%27c%27%2C+%27d%27%5D.iter%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth)

## ? → advance_by
```ruby:Ruby
it = [5, 6, 7, 8].to_enum
2.times { it.next }
it.next // => # !> ambiguous first argument; put parentheses or a space even after `/' operator
# ~> -:3: syntax error, unexpected end-of-input
```
```rust:Rust (nightly)
let mut it = [5, 6, 7, 8].iter();
it.advance_by(2) // => Ok(())
it.next()        // => Some(7)
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_advance_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.advance_by%282%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.advance_by)

## ? → fuse
```rust:Rust
struct Foo {
    counter: i32,
}

// 偶数番目だけ番号を返す
impl Iterator for Foo {
    type Item = i32;

    fn next(&mut self) -> Option<i32> {
        let val = self.counter;
        self.counter += 1;
        if val % 2 == 0 {
            Some(val)
        } else {
            None
        }
    }
}

let mut it = Foo { counter: 0 };
it.next() // => Some(0)
it.next() // => None
it.next() // => Some(2)
it.next() // => None
let mut it = it.fuse();
it.next() // => Some(4)
it.next() // => None
it.next() // => None
```
fuse を呼んで最初の None が来てから None を継続する。どういうときに使うのかはわからない
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++struct+Foo+%7B%0A++++counter%3A+i32%2C%0A%7D%0A%0A%2F%2F+%E5%81%B6%E6%95%B0%E7%95%AA%E7%9B%AE%E3%81%A0%E3%81%91%E7%95%AA%E5%8F%B7%E3%82%92%E8%BF%94%E3%81%99%0Aimpl+Iterator+for+Foo+%7B%0A++++type+Item+%3D+i32%3B%0A%0A++++fn+next%28%26mut+self%29+-%3E+Option%3Ci32%3E+%7B%0A++++++++let+val+%3D+self.counter%3B%0A++++++++self.counter+%2B%3D+1%3B%0A++++++++if+val+%25+2+%3D%3D+0+%7B%0A++++++++++++Some%28val%29%0A++++++++%7D+else+%7B%0A++++++++++++None%0A++++++++%7D%0A++++%7D%0A%7D%0A%0Alet+mut+it+%3D+Foo+%7B+counter%3A+0+%7D%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Alet+mut+it+%3D+it.fuse%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse)

## to_a → collect
```ruby:Ruby
[2, 3].each.to_a # => [2, 3]
```
```rust:Rust
[2, 3].iter().collect::<Vec<_>>() // => [2, 3]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect)

## each → for_each
```ruby:Ruby
["a", "b", "c"].each { |e| p e }
# >> "a"
# >> "b"
# >> "c"
```
```rust:Rust
["a", "b", "c"].iter().for_each(|e| println!("{:?}", e));
// >> "a"
// >> "b"
// >> "c"
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.for_each%28%7Ce%7C+println%21%28%22%7B%3A%3F%7D%22%2C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each)

## each + break → try_for_each
```ruby:Ruby
r = ["a", "b", "c"].each do |e|
  if e == "b"
    break e
  end
end
r # => "b"
```
```rust:Rust
use std::ops::ControlFlow::{Break, Continue};

let r = ["a", "b", "c"].iter().try_for_each(|&e| {
    if e == "b" {
        return Break(e)
    }
    Continue(())
});
r // => Break("b")
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+std%3A%3Aops%3A%3AControlFlow%3A%3A%7BBreak%2C+Continue%7D%3B%0A%0Alet+r+%3D+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.try_for_each%28%7C%26e%7C+%7B%0A++++if+e+%3D%3D+%22b%22+%7B%0A++++++++return+Break%28e%29%0A++++%7D%0A++++Continue%28%28%29%29%0A%7D%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_for_each)

## tap → inspect
```ruby:Ruby
["a", "b"].tap { |e| p e }.to_a # => ["a", "b"]
# >> ["a", "b"]
```
```rust:Rust
let mut v = Vec::new();
["a", "b"].iter().inspect(|&e| v.push(e)).collect::<Vec<_>>() // => ["a", "b"]
v // => ["a", "b"]
```
inspect は1つずつ要素が来るので tap とは少し異なる
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+Vec%3A%3Anew%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.iter%28%29.inspect%28%7C%26e%7C+v.push%28e%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.inspect)

## reverse → rev
```ruby:Ruby
["a", "b"].reverse # => ["b", "a"]
```
```rust:Rust
["a", "b"].iter().rev().collect::<Vec<_>>() // => ["b", "a"]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.iter%28%29.rev%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev)

## map → map
```ruby:Ruby
[2, 3].map { |e| e * 2 } # => [4, 6]
```
```rust:Rust
[2, 3].iter().map(|e| e * 2).collect::<Vec<_>>() // => [4, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.map%28%7Ce%7C+e+%2A+2%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map)

## ? → map_while
```ruby:Ruby
[3, 4, 5, 6].find_all { |e| e < 5 }.map { |e| e * 2 } # => [6, 8]
```
```rust:Rust
let it = [3, 4, 5, 6].iter().map_while(|&e| {
    if e < 5 {
        Some(e * 2)
    } else {
        None
    }
});
it.collect::<Vec<_>>() // => [6, 8]
```
クロージャーがOptionで返す版。Noneなら打ち切る
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B3%2C+4%2C+5%2C+6%5D.iter%28%29.map_while%28%7C%26e%7C+%7B%0A++++if+e+%3C+5+%7B%0A++++++++Some%28e+%2A+2%29%0A++++%7D+else+%7B%0A++++++++None%0A++++%7D%0A%7D%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while)

## find_all → filter
```ruby:Ruby
[2, 3, 4].find_all { |e| e % 2 == 0 } # => [2, 4]
```
```rust:Rust
[2, 3, 4].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // => [2, 4]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter)

## collect + find_all → filter_map
```ruby:Ruby
["", "5", "", "6"].collect { |e| Integer(e, exception: false) }.compact # => [5, 6]
```
```rust:Rust
// ok() は Result の Ok を Some に変換し、Err を None にする
["", "5", "", "6"].iter().filter_map(|e| e.parse::<isize>().ok()).collect::<Vec<_>>() // => [5, 6]
// 分解すると map + filter + map 相当をしていることがわかる
["", "5", "", "6"].iter().map(|e| e.parse::<isize>()).filter(|e| e.is_ok()).map(|e| e.unwrap()).collect::<Vec<_>>() // => [5, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+ok%28%29+%E3%81%AF+Result+%E3%81%AE+Ok+%E3%82%92+Some+%E3%81%AB%E5%A4%89%E6%8F%9B%E3%81%97%E3%80%81Err+%E3%82%92+None+%E3%81%AB%E3%81%99%E3%82%8B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%22%22%2C+%225%22%2C+%22%22%2C+%226%22%5D.iter%28%29.filter_map%28%7Ce%7C+e.parse%3A%3A%3Cisize%3E%28%29.ok%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%2F%2F+%E5%88%86%E8%A7%A3%E3%81%99%E3%82%8B%E3%81%A8+map+%2B+filter+%2B+map+%E7%9B%B8%E5%BD%93%E3%82%92%E3%81%97%E3%81%A6%E3%81%84%E3%82%8B%E3%81%93%E3%81%A8%E3%81%8C%E3%82%8F%E3%81%8B%E3%82%8B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%22%22%2C+%225%22%2C+%22%22%2C+%226%22%5D.iter%28%29.map%28%7Ce%7C+e.parse%3A%3A%3Cisize%3E%28%29%29.filter%28%7Ce%7C+e.is_ok%28%29%29.map%28%7Ce%7C+e.unwrap%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter_map)

## collect + compact + first → find_map
```ruby:Ruby
["", "5", "", "6"].collect { |e| Integer(e, exception: false) }.compact.first # => 5
```
```rust:Rust
// ok() は Result の Ok を Some に変換し、Err を None にする
["", "5", "", "6"].iter().find_map(|e| e.parse::<isize>().ok()) // => Some(5)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+ok%28%29+%E3%81%AF+Result+%E3%81%AE+Ok+%E3%82%92+Some+%E3%81%AB%E5%A4%89%E6%8F%9B%E3%81%97%E3%80%81Err+%E3%82%92+None+%E3%81%AB%E3%81%99%E3%82%8B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B%22%22%2C+%225%22%2C+%22%22%2C+%226%22%5D.iter%28%29.find_map%28%7Ce%7C+e.parse%3A%3A%3Cisize%3E%28%29.ok%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find_map)

## ? → scan
```rust:Rust
let it = [2, 3].iter().scan(10, |a, &e| {
    *a += e;
    Some(*a)
});
it.collect::<Vec<_>>() // => [12, 15]
```

[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B2%2C+3%5D.iter%28%29.scan%2810%2C+%7Ca%2C+%26e%7C+%7B%0A++++%2Aa+%2B%3D+e%3B%0A++++Some%28%2Aa%29%0A%7D%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan)

## take → take
```ruby:Ruby
[5, 6, 7, 8].take(2)   # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take(2).collect::<Vec<_>>() // => [5, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.take%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take)

## take_while → take_while
```ruby:Ruby
[5, 6, 7, 8].take_while { |e| e < 7 }  # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take_while(|&&e| e < 7).collect::<Vec<_>>() // => [5, 6]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.take_while%28%7C%26%26e%7C+e+%3C+7%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take_while)

## drop → skip
```ruby:Ruby
[5, 6, 7, 8].drop(2)   # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip(2).collect::<Vec<_>>() // => [7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.skip%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip)

## drop_while → skip_while
```ruby:Ruby
[5, 6, 7, 8].drop_while { |e| e < 7 }  # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip_while(|&&e| e < 7).collect::<Vec<_>>() // => [7, 8]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.skip_while%28%7C%26%26e%7C+e+%3C+7%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip_while)

## ? → step_by
```ruby:Ruby
[5, 6, 7, 8].each_slice(2).collect(&:first) # => [5, 7]

v = [5, 6, 7, 8]
v.values_at(*0.step(v.size - 1, by: 2)) # => [5, 7]
```
```rust:Rust
[5, 6, 7, 8].iter().step_by(2).collect::<Vec<_>>() // => [5, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.step_by%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.step_by)

## zip → zip
```ruby:Ruby
[2, 3].zip([4, 5]) # => [[2, 4], [3, 5]]
```
```rust:Rust
[2, 3].iter().zip([4, 5].iter()).collect::<Vec<_>>() // => [(2, 4), (3, 5)]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.zip%28%5B4%2C+5%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip)

## with_index → with_index
```ruby:Ruby
['a', 'b'].each.with_index.to_a # => [["a", 0], ["b", 1]]
```
```rust:Rust
['a', 'b'].iter().enumerate().collect::<Vec<_>>() // => [(0, 'a'), (1, 'b')]
```
index の位置が逆なので注意
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%27a%27%2C+%27b%27%5D.iter%28%29.enumerate%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.with_index)

## chain → chain
```ruby:Ruby
[2, 3].chain([4, 5]).to_a # => [2, 3, 4, 5]
```
```rust:Rust
[2, 3].iter().chain([4, 5].iter()).collect::<Vec<_>>() // => [2, 3, 4, 5]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.chain%28%5B4%2C+5%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain)

## flatten(1) → flatten
```ruby:Ruby
[[2, 3], [4, 5]].flatten(1) # => [2, 3, 4, 5]
```
```rust:Rust
[[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>() // => [2, 3, 4, 5]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B2%2C+3%5D%2C+%5B4%2C+5%5D%5D.iter%28%29.flatten%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten)

## flat_map → flat_map
```ruby:Ruby
[[2, 3], [4, 5]].flat_map(&:itself) # => [2, 3, 4, 5]
```
```rust:Rust
[[2, 3], [4, 5]].iter().flat_map(|e| e).collect::<Vec<_>>() // => [2, 3, 4, 5]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B2%2C+3%5D%2C+%5B4%2C+5%5D%5D.iter%28%29.flat_map%28%7Ce%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map)

## partition → partition
```ruby:Ruby
[5, 6, 7, 8].partition(&:even?)  # => [[6, 8], [5, 7]]
```
```rust:Rust
let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
even  // => [6, 8]
odd   // => [5, 7]
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+%28even%2C+odd%29%3A+%28Vec%3Cisize%3E%2C+Vec%3Cisize%3E%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.partition%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+even%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+odd%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition)

## ? → partition_in_place
```rust:Rust (nightly)
let mut ary = [2, 3, 4, 5, 6];
let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
index  // => 3
ary    // => [2, 6, 4, 5, 3]
ary[..index].iter().collect::<Vec<_>>() // => [2, 6, 4]
ary[index..].iter().collect::<Vec<_>>() // => [5, 3]
```
レシーバを破壊的に並び換える。ドキュメントの「個数を返す」は「境界のインデックスを返す」とも考えてもよさそう。
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_partition_in_place%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+ary+%3D+%5B2%2C+3%2C+4%2C+5%2C+6%5D%3B%0Alet+index+%3D+ary.iter_mut%28%29.partition_in_place%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+index%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+ary%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+ary%5B..index%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+ary%5Bindex..%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place)

## ? → is_partitioned
```rust:Rust (nightly)
[2, 3, 4, 5, 6].iter().is_partitioned(|&e| e % 2 == 0) // => false
[2, 4, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0) // => true
[4, 2, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0) // => true
```
partition_in_place を適用した結果と同じなら true
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_is_partitioned%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%2C+5%2C+6%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+4%2C+6%2C+3%2C+5%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B4%2C+2%2C+6%2C+3%2C+5%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned)

## ? → intersperse
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
セパレータは毎回固定で良いとき用
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse%28%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse)

## ? → intersperse_with
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
セパレータを動的に切り替えたいとき用
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse_with%28%7C%7C%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with)

## count → count
```ruby:Ruby
[2, 3, 4].each.count # => 3
[2, 3, 4].count      # => 3
```
```rust:Rust
[2, 3, 4].iter().count() // => 3
[2, 3, 4].len()          // => 3
```
統一してほしい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.count%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count)

## inject(0, :+) → fold
```ruby:Ruby
[2, 3, 4].inject(0, :+) # => 9
```
```rust:Rust
[2, 3, 4].iter().fold(0, |a, e| a + e) // => 9
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.fold%280%2C+%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold)

## inject(0, :+) + break → try_fold
```ruby:Ruby
sum = [5, 5, 5].inject(0) {|a, e|
  if a >= 10
    break
  end
  a + e
}
sum # => nil
```
```rust:Rust
let sum = [5, 5, 5].iter().try_fold(0, |a, &e| {
    if a >= 10 {
        return None
    }
    Some(a + e)
});
sum // => None
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+sum+%3D+%5B5%2C+5%2C+5%5D.iter%28%29.try_fold%280%2C+%7Ca%2C+%26e%7C+%7B%0A++++if+a+%3E%3D+10+%7B%0A++++++++return+None%0A++++%7D%0A++++Some%28a+%2B+e%29%0A%7D%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+sum%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_fold)

## inject(&:+) → reduce
```ruby:Ruby
[5, 6].inject(:+) # => 11
```
```rust:Rust
vec![5, 6].into_iter().reduce(|a, e| a + e) // => Some(11)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%5D.into_iter%28%29.reduce%28%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce)

## inject(:+) + break → try_reduce
```rust:Rust (nightly)
vec![5, 6].into_iter().try_reduce(|a, e| Some(a + e)) // => Some(Some(11))
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iterator_try_reduce%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%5D.into_iter%28%29.try_reduce%28%7Ca%2C+e%7C+Some%28a+%2B+e%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_reduce)

## sum → sum
```ruby:Ruby
[2, 3, 4].sum # => 9
```
```rust:Rust
[2, 3, 4].iter().sum::<isize>() // => 9
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.sum%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum)

## inject(1, :*) → product
```ruby:Ruby
[2, 3, 4].inject(1, :*) # => 24
```
```rust:Rust
[2, 3, 4].iter().product::<isize>() // => 24
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.product%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product)

## all? → all
```ruby:Ruby
[2, 3, 4].all? { |e| e >= 0 } # => true
```
```rust:Rust
[2, 3, 4].iter().all(|&e| e >= 0) // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.all%28%7C%26e%7C+e+%3E%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all)

## any? → any
```ruby:Ruby
[2, 3, 4].any? { |e| e >= 4 } # => true
```
```rust:Rust
[2, 3, 4].iter().any(|&e| e >= 4) // => true
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.any%28%7C%26e%7C+e+%3E%3D+4%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any)

## find → find
```ruby:Ruby
[2, 3, 4].find { |e| e == 3 } # => 3
```
```rust:Rust
[2, 3, 4].iter().find(|&&e| e == 3) // => Some(3)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.find%28%7C%26%26e%7C+e+%3D%3D+3%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find)

## index → index
```ruby:Ruby
[5, 6, 5].index { |e| e == 5 } # => 0
```
```rust:Rust
[5, 6, 5].iter().position(|&e| e == 5) // => Some(0)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.position%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.index)

## rindex → rposition
```ruby:Ruby
[5, 6, 5].rindex { |e| e == 5 } # => 2
```
```rust:Rust
[5, 6, 5].iter().rposition(|&e| e == 5) // => Some(2)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.rposition%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition)

## <=> → cmp
```ruby:Ruby
[5, 6] <=> [5, 6] # => 0
```
```rust:Rust
[5, 6].iter().cmp([5, 6].iter()) // => Equal
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp)

## ? → cmp_by
```rust:Rust (nightly)
[5, 6].iter().cmp_by(&[5, 6], |&a, &b| a.cmp(&b)) // => Equal
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.cmp%28%26b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp_by)

## <=> → partial_cmp
```ruby:Ruby
[5, 6] <=> [5, 6] # => 0
```
```rust:Rust
[5, 6].iter().partial_cmp([5, 6].iter()) // => Some(Equal)
```
Some でラップしてある
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.partial_cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp)

## ? → partial_cmp_by
```rust:Rust (nightly)
[5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)) // => Some(Equal)
```
Some でラップしてある
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.partial_cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.partial_cmp%28%26b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp_by)

## ? → eq ne lt le gt ge
```rust:Rust
[1].iter().eq([1, 2].iter())  // => false
[1].iter().ne([1, 2].iter())  // => true
[1].iter().lt([1, 2].iter())  // => true
[1].iter().le([1, 2].iter())  // => true
[1].iter().gt([1, 2].iter())  // => false
[1].iter().ge([1, 2].iter())  // => false
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.eq%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ne%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.lt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.le%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.gt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ge%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.ge)

## ? → eq_by
```ruby:Ruby
[2, 3].collect { |e| e + e } == [4, 6]                     # => true
[2, 3].each.with_index.all? { |e, i| e + e == [4, 6][i] }  # => true

it = [4, 6].to_enum
[2, 3].all? { |a; b| b = it.next; a + a == b }             # => true
```
```rust:Rust (nightly)
[2, 3].iter().eq_by(&[4, 6], |&a, &b| a + a == b) // => true
```
これは使いづらい
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.eq_by%28%26%5B4%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a+%2B+a+%3D%3D+b%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq_by)

## ? → cloned
```rust:Rust
[3, 4].iter().cloned().collect::<Vec<_>>()     // => [3, 4]
// ↓これと同じことらしい
[3, 4].iter().map(|&e| e).collect::<Vec<_>>()  // => [3, 4]
```
[こちらの方が詳しい](https://qiita.com/lo48576/items/34887794c146042aebf1#cloned-iteratort---iteratort)
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B3%2C+4%5D.iter%28%29.cloned%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%2F%2F+%E2%86%93%E3%81%93%E3%82%8C%E3%81%A8%E5%90%8C%E3%81%98%E3%81%93%E3%81%A8%E3%82%89%E3%81%97%E3%81%84%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B3%2C+4%5D.iter%28%29.map%28%7C%26e%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cloned)

## ? → copied
```rust:Rust
[3, 4].iter().copied().collect::<Vec<_>>()     // => [3, 4]
// ↓これと同じことらしい
[3, 4].iter().map(|&e| e).collect::<Vec<_>>()  // => [3, 4]
```
[こちらの方が詳しい](https://qiita.com/lo48576/items/34887794c146042aebf1#copied-iteratort---iteratort-%E3%81%9F%E3%81%A0%E3%81%97-t-%E3%81%AF-copy)
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B3%2C+4%5D.iter%28%29.copied%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%2F%2F+%E2%86%93%E3%81%93%E3%82%8C%E3%81%A8%E5%90%8C%E3%81%98%E3%81%93%E3%81%A8%E3%82%89%E3%81%97%E3%81%84%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B3%2C+4%5D.iter%28%29.map%28%7C%26e%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.copied)

## ? → by_ref
```rust:Rust
let mut it = [5, 6, 7].iter();
it.by_ref().collect::<Vec<_>>() // => [5, 6, 7]
// by_ref() がなければ次で失敗する
it                              // => Iter([])
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it.by_ref%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%2F%2F+by_ref%28%29+%E3%81%8C%E3%81%AA%E3%81%91%E3%82%8C%E3%81%B0%E6%AC%A1%E3%81%A7%E5%A4%B1%E6%95%97%E3%81%99%E3%82%8B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+it%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.by_ref)

## first → first
```ruby:Ruby
[2, 3, 4].first  # => 2
```
```rust:Rust
[2, 3, 4].first()  // => Some(2)
```
iter().last() はあるのに iter().first() はない
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.first%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.first)

## last → last
```ruby:Ruby
[2, 3, 4].last           # => 4
[2, 3, 4].each.to_a.last # => 4
```
```rust:Rust
[2, 3, 4].last()        // => Some(4)
[2, 3, 4].iter().last() // => Some(4)
```
単に最後が欲しいなら iter() を仲介しなくてよい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.last%28%29%29%3B%0Aprintln%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last)

## max → max
```ruby:Ruby
[2, 3, -4].max # => 3
```
```rust:Rust
[2_isize, 3, -4].iter().max() // => Some(3)
```
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2_isize%2C+3%2C+-4%5D.iter%28%29.max%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max)

## max_by → max_by_key
```ruby:Ruby
[2, 3, -4].max_by(&:abs) # => -4
```
```rust:Rust
[2_isize, 3, -4].iter().max_by_key(|e| e.abs()) // => Some(-4)
```
Rust は元の値を key と呼んでいる
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2_isize%2C+3%2C+-4%5D.iter%28%29.max_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key)

## ? → max_by
```ruby:Ruby
[2, 3, -4].sort { |a, b| a <=> b }.max # => 3
```
```rust:Rust
[2_isize, 3, -4].iter().max_by(|a, b| a.cmp(b)) // => Some(3)
```
使いづらい
[実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2_isize%2C+3%2C+-4%5D.iter%28%29.max_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by)

## min → min
使い方は max と同じ
 [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min)

## min_by → min_by_key
使い方は max_by_key と同じ
 [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key)

## ? → min_by
使い方は max_by と同じ
 [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by)

## ? → is_sorted
```ruby:Ruby
v = [2, 3, 4]
v == v.sort # => true
```
```rust:Rust (nightly)
[2, 3, 4].iter().is_sorted() // => true
```
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted)

## ? → is_sorted_by
```ruby:Ruby
v = [2, 3, 4]
v == v.sort { |a, b| a <=> b } # => true
```
```rust:Rust (nightly)
[2, 3, 4].iter().is_sorted_by(|a, b| a.partial_cmp(b)) // => true
```
partial_cmp は Some(Less) みたいなのを返す
[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%2C+4%5D.iter%28%29.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by)

## ? → is_sorted_by_key
```ruby:Ruby
v = [2, -3, 4]
v == v.sort_by(&:abs) # => true
```
```rust:Rust (nightly)
[2_isize, -3, 4].iter().is_sorted_by_key(|e| e.abs()) // => true
```

[実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2_isize%2C+-3%2C+4%5D.iter%28%29.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021) [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by_key)
