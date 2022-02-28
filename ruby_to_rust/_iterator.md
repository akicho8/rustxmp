
### each → iter
```ruby:Ruby
[2, 3].each # => #<Enumerator: [2, 3]:each>
```
```rust:Rust
[2, 3].iter() // => Iter([2, 3])
```

### to_a → collect
```ruby:Ruby
[2, 3].each.to_a # => [2, 3]
```
```rust:Rust
[2, 3].iter().collect::<Vec<_>>() // => [2, 3]
```

### reverse → rev
```ruby:Ruby
[2, 3].reverse # => [3, 2]
```
```rust:Rust
[2, 3].iter().rev().collect::<Vec<_>>() // => [3, 2]
```

### map
```ruby:Ruby
[2, 3].map { |e| e * 2 } # => [4, 6]
```
```rust:Rust
[2, 3].iter().map(|e| e * 2).collect::<Vec<_>>() // => [4, 6]
```

### find_all → filter
```ruby:Ruby
[2, 3, 4].find_all { |e| e % 2 == 0 } # => [2, 4]
```
```rust:Rust
[2, 3, 4].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // => [2, 4]
```

### ? → step_by
```ruby:Ruby
[2, 3, 4].each_slice(2).collect(&:first) # => [2, 4]

v = [2, 3, 4]
v.values_at(*0.step(v.size - 1, by: 2)) # => [2, 4]
```
```rust:Rust
[2, 3, 4].iter().step_by(2).collect::<Vec<_>>() // => [2, 4]
```

### zip
```ruby:Ruby
[2, 3].zip([4, 5]) # => [[2, 4], [3, 5]]
```
```rust:Rust
[2, 3].iter().zip([4, 5].iter()).collect::<Vec<_>>() // => [(2, 4), (3, 5)]
```

### with_index
```ruby:Ruby
['a', 'b'].each.with_index.to_a # => [["a", 0], ["b", 1]]
```
```rust:Rust
['a', 'b'].iter().enumerate().collect::<Vec<_>>() // => [(0, 'a'), (1, 'b')]
```
index の位置が逆なので注意

### chain
```ruby:Ruby
[2, 3].chain([4, 5]).to_a # => [2, 3, 4, 5]
```
```rust:Rust
[2, 3].iter().chain([4, 5].iter()).collect::<Vec<_>>() // => [2, 3, 4, 5]
```

### count
```ruby:Ruby
[2, 3, 4].each.count # => 3
[2, 3, 4].count      # => 3
```
```rust:Rust
[2, 3, 4].iter().count() // => 3
[2, 3, 4].len()          // => 3
```
統一してほしい

### inject → fold
```ruby:Ruby
[2, 3, 4].inject(0, :+) # => 9
```
```rust:Rust
[2, 3, 4].iter().fold(0, |a, e| a + e) // => 9
```

### sum
```ruby:Ruby
[2, 3, 4].sum # => 9
```
```rust:Rust
[2, 3, 4].iter().sum::<isize>() // => 9
```

### inject(1, :*) → product
```ruby:Ruby
[2, 3, 4].inject(1, :*) # => 24
```
```rust:Rust
[2, 3, 4].iter().product::<isize>() // => 24
```
ruby の product と全然ちがうので注意

### all? → all
```ruby:Ruby
[2, 3, 4].all? { |e| e >= 0 } # => true
```
```rust:Rust
[2, 3, 4].iter().all(|&e| e >= 0) // => true
```

### any? → any
```ruby:Ruby
[2, 3, 4].any? { |e| e >= 4 } # => true
```
```rust:Rust
[2, 3, 4].iter().any(|&e| e >= 4) // => true
```

### find
```ruby:Ruby
[2, 3, 4].find { |e| e == 3 } # => 3
```
```rust:Rust
[2, 3, 4].iter().find(|&&e| e == 3) // => Some(3)
```

### index
```ruby:Ruby
[5, 6, 5].index { |e| e == 5 } # => 0
```
```rust:Rust
[5, 6, 5].iter().position(|&e| e == 5) // => Some(0)
```

### rindex → rposition
```ruby:Ruby
[5, 6, 5].rindex { |e| e == 5 } # => 2
```
```rust:Rust
[5, 6, 5].iter().rposition(|&e| e == 5) // => Some(2)
```

### == → cmp
```ruby:Ruby
[2, 3, 4] == [2, 3, 4] # => true
```
```rust:Rust
[2, 3, 4].iter().cmp([2, 3, 4].iter()) == std::cmp::Ordering::Equal // => true
```
もっとスマートな方法があると信じたい

### next
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

### ? → nth
```ruby:Ruby
[2, 3, 4].each.to_a.at(0) # => 2
```
```rust:Rust
[2, 3, 4].iter().nth(0) // => Some(2)
```

### last
```ruby:Ruby
[2, 3, 4].each.to_a.last # => 4
[2, 3, 4].last           # => 4
```
```rust:Rust
[2, 3, 4].iter().last() // => Some(4)
[2, 3, 4].last()        // => Some(4)
```
単に最後が欲しいなら iter() を仲介しなくてよい

### max
```ruby:Ruby
[2, 3, -4].max # => 3
```
```rust:Rust
[2_i32, 3, -4].iter().max() // => Some(3)
```

### max_by → max_by_key
```ruby:Ruby
[2, 3, -4].max_by(&:abs) # => -4
```
```rust:Rust
[2_i32, 3, -4].iter().max_by_key(|e| e.abs()) // => Some(-4)
```
Rust は元の値をなぜか key と呼んでいるので混乱しそう

### ? → max_by
```ruby:Ruby
[2, 3, -4].sort { |a, b| a <=> b }.max # => 3
```
```rust:Rust
[2_i32, 3, -4].iter().max_by(|a, b| a.cmp(b)) // => Some(3)
```
使いづらい
