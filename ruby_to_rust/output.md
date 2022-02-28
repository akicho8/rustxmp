
### transpose
```Ruby
[[1, 2], [3, 4]].transpose # => [[1, 3], [2, 4]]
```
```Rust
let v = [(1, 2), (3, 4)];
let (left, right): (Vec<_>, Vec<_>) = v.iter().cloned().unzip();
left     // => [1, 3]
right    // => [2, 4]
```

### all?
```Ruby
[2, 3, 4].all?{|e|e >= 0} # => true
```
```Rust
[2, 3, 4].iter().all(|&e|e >= 0) // => true
```
