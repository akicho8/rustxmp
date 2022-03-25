| Ruby                              | Rust                        |
|-----------------------------------|-----------------------------|
| length                            | len                         |
| count                             | iter.count                  |
| tally                             | iter.counts                 |
| map.tally                         | iter.counts_by              |
| uniq.size \<= 1                   | iter.all_equal              |
| v == v.uniq                       | iter.all_unique             |
| transpose                         | iter.multiunzip             |
| include?                          | contains                    |
| slice                             | get                         |
| a, b = ary                        | next_tuple                  |
| a, b = ary 厳しい版               | collect_tuple               |
| first                             | first                       |
| first(n)                          | get(..n)                    |
| take(n)                           | get(..n)                    |
| take(n)                           | iter.take(n)                |
| [...-n]                           | iter.dropping_back(n)       |
| take_while                        | iter.take_while             |
| last                              | last                        |
| last                              | iter.last                   |
| last(n)                           | v.get((v.len() - n)..)      |
| clear                             | clear                       |
| empty?                            | is_empty                    |
| drop(n)                           | get(n..)                    |
| drop(n)                           | iter.dropping               |
| drop(n) の破壊版                  | split_off(n)                |
| drop(n)                           | iter.skip(n)                |
| drop_while                        | iter.skip_while             |
| [v.take(n), v.drop(n)]            | split_at(n)                 |
| push                              | push                        |
| a.concat(b.slice!(0..))           | append                      |
| pop                               | pop                         |
| shift                             | take_first                  |
| pop                               | take_last                   |
| unshift(v)                        | insert(0, v)                |
| rotate!(n)                        | rotate_left(n)              |
| rotate!(-n)                       | rotate_right(n)             |
| reverse                           | iter.rev                    |
| reverse!                          | reverse                     |
| fill                              | fill                        |
| fill {}                           | fill_with                   |
| fill に類似                       | pad_using                   |
| v * n                             | v.repeat(n)                 |
| delete_at                         | remove                      |
| v[i] = v.pop                      | swap_remove(i)              |
| insert                            | insert                      |
| map                               | iter.map                    |
| flat_map                          | iter.flat_map               |
| ?                                 | update                      |
| map(&:to_f)                       | iter.map_into::\<f64\>()    |
| map の何か渡せる版                | iter.scan                   |
| find_all                          | iter.filter                 |
| reject                            | iter.filter(\|\| !)         |
| filter_map                        | iter.filter_map             |
| take_while + collect              | iter.map_while              |
| find して何か                     | iter.find_map               |
| select!                           | retain                      |
| reject!                           | retain(\|\| !)              |
| select! しつつ要素も更新          | retain_mut                  |
| uniq                              | iter.unique                 |
| uniq {}                           | iter.unique_by              |
| all?                              | iter.all                    |
| any?                              | iter.any                    |
| one? && first                     | iter.at_most_one            |
| find                              | iter.find                   |
| find \|\| first                   | iter.find_or_first          |
| find \|\| last                    | iter.find_or_last           |
| index {}                          | iter.position               |
| rindex {}                         | iter.rposition              |
| ?                                 | iter.find_position          |
| inject(acc) {}                    | iter.fold                   |
| inject(acc) { break }             | iter.try_fold               |
| inject {}                         | iter.reduce                 |
| inject { break }                  | iter.try_reduce             |
| sum                               | iter.sum                    |
| inject(:+)                        | ter.sum1                    |
| inject(1, :*)                     | iter.product                |
| inject(:*)                        | ter.product1                |
| max                               | iter.max                    |
| max_by                            | iter.max_by_key             |
| max {}                            | iter.max_by                 |
| index(max)                        | iter.position_max           |
| min                               | iter.min                    |
| min_by                            | iter.min_by_key             |
| min {}                            | iter.min_by                 |
| index(min)                        | iter.position_min           |
| minmax                            | iter.minmax                 |
| ?                                 | iter.position_minmax        |
| to_enum                           | iter                        |
| entries                           | iter.collect                |
| to_a                              | iter.collect_vec            |
| each                              | iter.for_each               |
| each { break }                    | iter.try_for_each           |
| with_index                        | iter.enumerate              |
| with_index の抽象化               | iter.with_position          |
| tap { \|e\| e.each {} }           | iter.inspect                |
| each_slice(n).collect(&:first)    | iter.step_by(n)             |
| zip 余り除去                      | iter.zip                    |
| zip 捨てない 詰める               | iter.interleave             |
| zip 捨てない 詰める 富豪的        | iter.zip_longest            |
| zip 次が無いと終わり              | iter.interleave_shortest    |
| combination                       | iter.combinations           |
| permutation                       | iter.permutations           |
| combination の重ね掛け            | iter.powerset               |
| each_cons(n)                      | windows(n)                  |
| each_cons 個数で指定しない        | iter.tuple_windows          |
| each_cons 一周する                | iter.circular_tuple_windows |
| each_cons 余り除去                | iter.tuples                 |
| chunk                             | group_by                    |
| partition                         | iter.partition              |
| partition + map                   | iter.partition_map          |
| ?                                 | iter.partition_result       |
| partition の破壊版                | iter_mut.partition_in_place |
| ?                                 | iter.is_partitioned         |
| each_slice                        | chunks                      |
| each_slice の末尾から版           | rchunks                     |
| chunk                             | split                       |
| slice_after                       | split_inclusive             |
| chunk の末尾から版                | rsplit                      |
| split(?, n) の類似                | splitn(n, \|\|)             |
| ?                                 | rsplitn                     |
| start_with? の類似                | starts_with                 |
| end_with? の類似                  | ends_with                   |
| delete_prefix の類似              | strip_prefix                |
| delete_suffix の類似              | strip_suffix                |
| slice!(...n) or slice!(n...)      | take                        |
| to_a                              | to_vec                      |
| join(sep) で文字列化              | iter.join                   |
| collect.join                      | iter.format_with            |
| collect.join の簡易版             | iter.format                 |
| join(sep)                         | join                        |
| join                              | concat                      |
| flatten(1)                        | concat                      |
| flatten(1) 区切り値追加           | join                        |
| flatten(1)                        | iter.flatten                |
| sort                              | iter.sorted                 |
| sort!                             | sort                        |
| sort {}                           | iter.sorted_by              |
| sort! {}                          | sort_by                     |
| sort_by ブロック呼びすぎ          | iter.sorted_by_key          |
| sort_by! ブロック呼びすぎ         | sort_by_key                 |
| sort_by                           | iter.sorted_by_cached_key   |
| sort_by!                          | sort_by_cached_key          |
| sort!                             | sort_unstable               |
| sort! {}                          | sort_unstable_by            |
| ?                                 | sort_unstable_by_key        |
| ?                                 | binary_search               |
| bsearch_index                     | binary_search_by            |
| ?                                 | binary_search_by_key        |
| squeeze! の類似                   | dedup                       |
| squeeze! の類似                   | dedup_by_key(\|e\|)         |
| squeeze! の類似                   | dedup_by(\|a, b\|)          |
| ?                                 | partition_dedup             |
| upcase! の類似                    | make_ascii_uppercase        |
| downcase! の類似                  | make_ascii_lowercase        |
| all? { \|e\| (0..127).cover?(e) } | is_ascii                    |
| sort.take(n)                      | iter.k_smallest(n)          |
| \<=\>                             | iter.cmp                    |
| ?                                 | iter.cmp_by                 |
| \<=\>                             | partial_cmp                 |
| ?                                 | iter.partial_cmp_by         |
| join + each ???                   | iter.intersperse            |
| join + each ???                   | iter.intersperse_with       |
| chain                             | iter.chain                  |
| it.next                           | it.next                     |
| it.peek                           | it.peek                     |
| ?                                 | it.nth                      |
| n.times { it.next }               | it.advance_by(n)            |
| ?                                 | it.fuse                     |
| ?                                 | it.size_hint                |
| ?                                 | iter.eq                     |
| ?                                 | iter.eq_by                  |
| ?                                 | iter.is_sorted              |
| ?                                 | is_sorted                   |
| ?                                 | is_sorted_by                |
| ?                                 | is_sorted_by_key            |
| ?                                 | iter.is_sorted_by           |
| ?                                 | iter.is_sorted_by_key       |
| ?                                 | select_nth_unstable         |
| ?                                 | select_nth_unstable_by      |
| ?                                 | select_nth_unstable_by_key  |
| to_enum を2つ                     | iter.tee                    |


## `length` → `len`
```ruby:Ruby
[5, 6].length  # => 2
```
```rust:Rust
let v = vec![5, 6];
v.len()  // => 2
```
 
## `count` → `iter.count`
```ruby:Ruby
[5, 6].count  # => 2
```
```rust:Rust
[5, 6].iter().count() // => 2
```
クロージャは渡せない
 
## `tally` → `iter.counts`
```ruby:Ruby
[5, 5, 6].tally  # => {5=>2, 6=>1}
```
```rust:Rust
use itertools::Itertools;
[5, 5, 6].iter().counts()  // => {6: 1, 5: 2}
```
 
## `map.tally` → `iter.counts_by`
```ruby:Ruby
[5, 5, 6].map { |e| e * 2 }.tally  # => {10=>2, 12=>1}
```
```rust:Rust
use itertools::Itertools;
[5, 5, 6].iter().counts_by(|e| e * 2)  // => {12: 1, 10: 2}
```
 
## `uniq.size <= 1` → `iter.all_equal`
```ruby:Ruby
[5, 5, 5].uniq.size <= 1  # => true
```
```rust:Rust
use itertools::Itertools;
[5, 5, 5].iter().all_equal()  // => true
```
 
## `v == v.uniq` → `iter.all_unique`
```ruby:Ruby
v = [5, 6, 7]
v == v.uniq  # => true
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().all_unique()  // => true
```
 
## `transpose` → `iter.multiunzip`
```ruby:Ruby
[[1, 2, 3], [4, 5, 6], [7, 8, 9]].transpose # => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
```
```rust:Rust
use itertools::Itertools;
let v = vec![(1, 2, 3), (4, 5, 6), (7, 8, 9)];
let (a, b, c): (Vec<_>, Vec<_>, Vec<_>) = v.into_iter().multiunzip();
a // => [1, 4, 7]
b // => [2, 5, 8]
c // => [3, 6, 9]
```
 
## `include?` → `contains`
```ruby:Ruby
[5, 6, 7].include?(6)  # => true
```
```rust:Rust
[5, 6, 7].contains(&6)  // => true
```
この `&` はどういうことだろう
 
## `slice` → `get`
```ruby:Ruby
v = [5, 6, 7, 8]
v.slice(1)     # => 6
v.slice(1..2)  # => [6, 7]
v[1]           # => 6
```
```rust:Rust
let v = vec![5, 6, 7, 8];
v.get(1)      // => Some(6)
v.get(1..=2)  // => Some([6, 7])
v[1]          // => 6
```
何かやるとすぐ元を破壊しようとするメソッドが多いなかで get は安全かつ範囲も使えるので便利。ただしマイナスを指定しても末尾からとはならない。整数でアクセスするときだけ get(i) を [i] にすれば Option 型にならない。
 
## `a, b = ary` → `next_tuple`
```ruby:Ruby
a, b = [5, 6, 7, 8]
a  # => 5
b  # => 6
```
```rust:Rust
use itertools::Itertools;
if let Some((a, b)) = [5, 6, 7, 8].iter().next_tuple() {
    a // => 5
    b // => 6
}

[5, 6, 7, 8].get(..3)                         // => Some([5, 6, 7])
[5, 6, 7, 8].iter().next_tuple::<(_, _, _)>() // => Some((5, 6, 7))
```
get(..n) に似ているが、取り出される数は受け側のタプルの要素数で決まる。繰り返さない。取り出しておわり。
 
## `a, b = ary 厳しい版` → `collect_tuple`
```ruby:Ruby
v = [5, 6]
if v.size == 2
  a, b = v
  a # => 5
  b # => 6
end
```
```rust:Rust
use itertools::Itertools;
[5].iter().collect_tuple::<(_, _)>()       // => None
[5, 6].iter().collect_tuple::<(_, _)>()    // => Some((5, 6))
[5, 6, 7].iter().collect_tuple::<(_, _)>() // => None
```
タプルの要素数と配列の要素数が同じときだけ取り出せる。メソッド名からこの挙動は想像つかなかった。
 
## `first` → `first`
```ruby:Ruby
[5, 6, 7].first   # => 5
```
```rust:Rust
[5, 6, 7].first() // => Some(5)
```
 
## `first(n)` → `get(..n)`
```ruby:Ruby
[5, 6, 7].first(2)  # => [5, 6]
```
```rust:Rust
[5, 6, 7].get(..2)  // => Some([5, 6])
```

 
## `take(n)` → `get(..n)`
```ruby:Ruby
[5, 6, 7, 8, 9].take(2)  # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8, 9].get(..2) // => Some([5, 6])
```

 
## `take(n)` → `iter.take(n)`
```ruby:Ruby
[5, 6, 7, 8].take(2)   # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take(2).collect::<Vec<_>>() // => [5, 6]
```
 
## `[...-n]` → `iter.dropping_back(n)`
```ruby:Ruby
[5, 6, 7, 8, 9][...-2]  # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().dropping_back(2) // => Iter([5, 6, 7])
```
 
## `take_while` → `iter.take_while`
```ruby:Ruby
[5, 6, 7, 8].take_while { |e| e < 7 }  # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take_while(|&&e| e < 7).collect::<Vec<_>>() // => [5, 6]
```
 
## `last` → `last`
```ruby:Ruby
[5, 6, 7].last   # => 7
```
```rust:Rust
[5, 6, 7].last() // => Some(7)
```
 
## `last` → `iter.last`
```ruby:Ruby
[5, 6, 7].each.entries.last # => 7
```
```rust:Rust
[5, 6, 7].iter().last() // => Some(7)
```
`iter().last()` はあるのに `iter().first()` はない
 
## `last(n)` → `v.get((v.len() - n)..)`
```ruby:Ruby
[5, 6, 7].last(2)  # => [6, 7]
```
```rust:Rust
let v = vec![5, 6, 7];
v.get((v.len() - 2)..)   // => Some([6, 7])
```
専用メソッドがありそうだが見つからなかった。引数は `v.len() - 2..` と書いてもいいけど読み間違いそう。
 
## `clear` → `clear`
```ruby:Ruby
v = [5, 6]
v.clear
v  # => []
```
```rust:Rust
let mut v = vec![5, 6];
v.clear();
v  // => []
```
 
## `empty?` → `is_empty`
```ruby:Ruby
[].empty? # => true
```
```rust:Rust
Vec::<isize>::new().is_empty() // => true
```
 
## `drop(n)` → `get(n..)`
```ruby:Ruby
[5, 6, 7, 8, 9].drop(2)  # => [7, 8, 9]
```
```rust:Rust
vec![5, 6, 7, 8, 9].get(2..)  // => Some([7, 8, 9])
```

 
## `drop(n)` → `iter.dropping`
```ruby:Ruby
[5, 6, 7, 8, 9].drop(2)  # => [7, 8, 9]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().dropping(2) // => Iter([7, 8, 9])
```
 
## `drop(n) の破壊版` → `split_off(n)`
```ruby:Ruby
v = [5, 6, 7, 8, 9]
r = v.slice!(2..)
r  # => [7, 8, 9]
v  # => [5, 6]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8, 9];
let r = v.split_off(2);
r  // => [7, 8, 9]
v  // => [5, 6]
```
メソッド名がイケてない。off が何の略なのかは不明。offset ？
 
## `drop(n)` → `iter.skip(n)`
```ruby:Ruby
[5, 6, 7, 8].drop(2)   # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip(2).collect::<Vec<_>>() // => [7, 8]
```
 
## `drop_while` → `iter.skip_while`
```ruby:Ruby
[5, 6, 7, 8].drop_while { |e| e < 7 }  # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip_while(|&&e| e < 7).collect::<Vec<_>>() // => [7, 8]
```
 
## `[v.take(n), v.drop(n)]` → `split_at(n)`
```ruby:Ruby
v = [5, 6, 7, 8, 9]
n = 2
[v.take(n), v.drop(n)]  # => [[5, 6], [7, 8, 9]]

v.partition.with_index { |_, i| i < n } # => [[5, 6], [7, 8, 9]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
let (a, b) = v.split_at(2);
a  // => [5, 6]
b  // => [7, 8, 9]
v  // => [5, 6, 7, 8, 9]
```
 
## `push` → `push`
```ruby:Ruby
v = [5, 6]
v.push(7)
v # => [5, 6, 7]
```
```rust:Rust
let mut v = vec![5, 6];
v.push(7);
v  // => [5, 6, 7]
```
 
## `a.concat(b.slice!(0..))` → `append`
```ruby:Ruby
a = [5, 6]
b = [7, 8]
a.concat(b.slice!(0..))
a # => [5, 6, 7, 8]
b # => []
```
```rust:Rust
let mut a = vec![5, 6];
let mut b = vec![7, 8];
a.append(&mut b);
a  // => [5, 6, 7, 8]
b  // => []
```
push の別名ではない。中身が**移動する**ので注意しよう。
 
## `pop` → `pop`
```ruby:Ruby
v = [5, 6, 7]
v.pop  # => 7
v      # => [5, 6]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.pop()  // => Some(7)
v        // => [5, 6]
```
 
## `shift` → `take_first`
```ruby:Ruby
v = [5, 6, 7]
v.shift  # => 5
v        # => [6, 7]
```
```rust:Rust (nightly)
let mut v: &[_] = &[5, 6, 7];
v.take_first()  // => Some(5)
v               // => [6, 7]
```
 
## `pop` → `take_last`
```ruby:Ruby
v = [5, 6, 7]
v.pop    # => 7
v        # => [5, 6]
```
```rust:Rust (nightly)
let mut v: &[_] = &[5, 6, 7];
v.take_last()  // => Some(7)
v              // => [5, 6]
```
 
## `unshift(v)` → `insert(0, v)`
```ruby:Ruby
v = [6, 7]
v.unshift(5)
v  # => [5, 6, 7]
```
```rust:Rust
let mut v = vec![6, 7];
v.insert(0, 5);
v  // => [5, 6, 7]
```
insert で代用しよう
 
## `rotate!(n)` → `rotate_left(n)`
```ruby:Ruby
v = [5, 6, 7]
v.rotate!(1)
v  # => [6, 7, 5]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.rotate_left(1);
v  // => [6, 7, 5]
```
 
## `rotate!(-n)` → `rotate_right(n)`
```ruby:Ruby
v = [5, 6, 7]
v.rotate!(-1)
v  # => [7, 5, 6]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.rotate_right(1);
v  // => [7, 5, 6]
```
 
## `reverse` → `iter.rev`
```ruby:Ruby
[5, 6, 7].reverse # => [7, 6, 5]
```
```rust:Rust
[5, 6, 7].iter().rev().collect::<Vec<_>>() // => [7, 6, 5]
```
Vec 自体に reverse があるけど破壊してしまう。iter 経由の rev は破壊しない。名前は合わせてほしかった。
 
## `reverse!` → `reverse`
```ruby:Ruby
v = [5, 6, 7]
v.reverse!
v  # => [7, 6, 5]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.reverse();
v  // => [7, 6, 5]
```
破壊しないのが欲しかった
 
## `fill` → `fill`
```ruby:Ruby
v = [5, 6, 7]
v.fill(8)
v # => [8, 8, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.fill(8);
v  // => [8, 8, 8]
```
 
## `fill {}` → `fill_with`
```ruby:Ruby
v = [5, 6, 7]
v.fill { 8 }
v # => [8, 8, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.fill_with(|| 8);
v  // => [8, 8, 8]
```
引数の形式が厳密であるがゆえに少し違うだけで仕方なく別のメソッドを用意しているように感じる
 
## `fill に類似` → `pad_using`
```ruby:Ruby
module Enumerable
  def pad_using(n, &block)
    [*self, *(size...n).collect(&block)]
  end
end

(100..102).pad_using(6) { |i| i * 2 } # => [100, 101, 102, 6, 8, 10]
```
```rust:Rust
use itertools::Itertools;
(100..=102).pad_using(6, |i| i * 2).collect::<Vec<_>>() // => [100, 101, 102, 6, 8, 10]
```
配列に適用したかったが方法がわからなかった。Range的なのにしか適用できないのかもしれない。
 
## `v * n` → `v.repeat(n)`
```ruby:Ruby
[5, 6] * 2  # => [5, 6, 5, 6]
```
```rust:Rust
[5, 6].repeat(2)  // => [5, 6, 5, 6]
```
 
## `delete_at` → `remove`
```ruby:Ruby
v = [5, 6, 7, 8]
v.delete_at(1)  # => 6
v               # => [5, 7, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8];
v.remove(1)   // => 6
v             // => [5, 7, 8]
```
前に詰めるので最悪 O(n) かかる
 
## `v[i] = v.pop` → `swap_remove(i)`
```ruby:Ruby
class Array
  def swap_remove(i)
    self[i].tap do
      self[i] = pop
    end
  end
end

v = [5, 6, 7, 8]
v.swap_remove(1)  # => 6
v                 # => [5, 8, 7]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8];
v.swap_remove(1)  // => 6
v                 // => [5, 8, 7]
```
指定の位置に最後の要素を持ってくる。詰める処理を省けるので O(1) で消せる。順序を気にしないとき用。
 
## `insert` → `insert`
```ruby:Ruby
v = [5, 7]
v.insert(1, 6)
v  # => [5, 6, 7]
```
```rust:Rust
let mut v = vec![5, 7];
v.insert(1, 6);
v  // => [5, 6, 7]
```
 
## `map` → `iter.map`
```ruby:Ruby
[5, 6].map { |e| e * 10 }       # => [50, 60]
[5, 6].lazy.map { |e| e * 10 }  # => #<Enumerator::Lazy: #<Enumerator::Lazy: [5, 6]>:map>
```
```rust:Rust
[5, 6].iter().map(|e| e * 10).collect::<Vec<_>>() // => [50, 60]
[5, 6].iter().map(|e| e * 10)                     // => Map { iter: Iter([5, 6]) }
```
元を破壊しないので使いやすい。
他の iter 経由のメソッドもだけど繰り返し処理は collect() などが呼ばれるまで評価されないので正確には lazy.map の方が似ている(たぶん)。

 
## `flat_map` → `iter.flat_map`
```ruby:Ruby
[[5, 6], [7, 8]].flat_map(&:itself) # => [5, 6, 7, 8]
```
```rust:Rust
[[5, 6], [7, 8]].iter().flat_map(|e| e).collect::<Vec<_>>() // => [5, 6, 7, 8]
```
 
## `?` → `update`
```ruby:Ruby
["A", "B"].collect { |e| "#{e}+" } # => ["A+", "B+"]
```
```rust:Rust
use itertools::Itertools;
let v = vec![String::from("A"), String::from("B")];
v.into_iter().update(|e| e.push_str("+")).collect::<Vec<_>>() // => ["A+", "B+"]

// これでよくない？
["A", "B"].iter().map(|e| format!("{}+", e)).collect::<Vec<_>>() // => ["A+", "B+"]
```
「各要素を生成する前に各要素にミューテーション関数を適用するイテレータアダプタを返す」らしいが意味はよくわかっていない
 
## `map(&:to_f)` → `iter.map_into::<f64>()`
```ruby:Ruby
[5, 6, 7].map(&:to_f)  # => [5.0, 6.0, 7.0]
```
```rust:Rust
use itertools::Itertools;
vec![5, 6, 7].into_iter().map_into::<f64>().collect::<Vec<_>>() // => [5.0, 6.0, 7.0]
```
逆に小数を整数にしようとしたらできなかった
 
## `map の何か渡せる版` → `iter.scan`
```rust:Rust
let it = [2, 3].iter().scan(10, |a, &e| {
    *a += e;
    Some(*a)
});
it.collect::<Vec<_>>() // => [12, 15]
```
書き方は inject に似ているけど map のように配列を返す。each_with_object の代用としても使えそう。
 
## `find_all` → `iter.filter`
```ruby:Ruby
[4, 5, 6].find_all { |e| e % 2 == 0 } # => [4, 6]
```
```rust:Rust
[4, 5, 6].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // => [4, 6]
```
元を破壊しないので retain より使いやすい
 
## `reject` → `iter.filter(|| !)`
```ruby:Ruby
[4, 5, 6].reject { |e| e % 2 == 0 } # => [5]
```
```rust:Rust
[4, 5, 6].iter().filter(|&e| !(e % 2 == 0)).collect::<Vec<_>>() // => [5]
```
filter の逆版は無いっぽいので filter のクロージャで返す値を反転しよう
 
## `filter_map` → `iter.filter_map`
```ruby:Ruby
[5, 6, 7, 8].filter_map { |e| e * 10 if e.even? } # => [60, 80]
[5, 6, 7, 8].find_all(&:even?).map { |e| e * 10 } # => [60, 80]
```
```rust:Rust
let r = [5, 6, 7, 8].iter().filter_map(|&e| {
    if e % 2 == 0 {
       Some(e * 10)
    } else {
       None
    }
});
r.collect::<Vec<_>>() // => [60, 80]

// 混乱しにくい書き方
[5, 6, 7, 8].iter().filter(|&e| e % 2 == 0).map(|e| e * 10).collect::<Vec<_>>() // => [60, 80]
```
2つのことを同時に行うメソッドは混乱してしまう。よっぽのどのことがなければ filter + map を使おう。
 
## `take_while + collect` → `iter.map_while`
```ruby:Ruby
[6, 6, 7, 6].take_while(&:even?).collect { |e| e * 10 } # => [60, 60]
```
```rust:Rust
let it = [6, 6, 7, 6].iter().map_while(|&e| {
    if e % 2 == 0 {
        Some(e * 10)
    } else {
        None
    }
});
it.collect::<Vec<_>>() // => [60, 60]

// 混乱しにくい書き方
[6, 6, 7, 6].iter().take_while(|&e| e % 2 == 0).map(|e| e * 10).collect::<Vec<_>>() // => [60, 60]
```
filter_map の先頭から続く有効なものだけ版。take_while + map の方がわかりやすい。
 
## `find して何か` → `iter.find_map`
```ruby:Ruby
[5, 6, 7, 8].find(&:even?)&.* 10 # => 60
```
```rust:Rust
let r = [5, 6, 7, 8].iter().find_map(|&e| {
    if e % 2 == 0 {
       Some(e * 10)
    } else {
       None
    }
});
r // => Some(60)

// 混乱しにくい書き方
if let Some(v) = [5, 6, 7, 8].iter().find(|&e| e % 2 == 0) {
    v * 10 // => 60
}
```
map とあるせいで繰り返しを想像してしまうがただの find と考えた方がよい。また、よっぽどのことがなければ find した後で何かした方がわかりやすい。
 
## `select!` → `retain`
```ruby:Ruby
v = [5, 6, 7, 8]
v.select! { |e| e >= 7 }
v  # => [7, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8];
v.retain(|&e| e >= 7);
v  // => [7, 8]
```
retain の意味は「保持」
 
## `reject!` → `retain(|| !)`
```ruby:Ruby
v = [5, 6, 7, 8]
v.reject! { |e| e >= 7 }
v  # => [5, 6]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8];
v.retain(|&e| !(e >= 7));
v  // => [5, 6]
```
retain の逆版は無いっぽいので retain のクロージャで返す値を反転しよう
 
## `select! しつつ要素も更新` → `retain_mut`
```ruby:Ruby
# おすすめしない書き方です
v = ["a", "b", "c"]
v.select! do |e|
  if e == "b" || e == "c"
    if e == "b"
      e.upcase!
    end
    true
  end
end
v  # => ["B", "c"]
```
```rust:Rust (nightly)
let mut v = vec![String::from("a"), String::from("b"), String::from("c")];
v.retain_mut(|e| {
    if e == "b" || e == "c" {
        if e == "b" {
            *e = e.to_uppercase();
        }
        true
    } else {
        false
    }
});
v  // => ["B", "c"]
```
よっぽどのことがなければ集めるのと変更するのは別々に書いた方がいいと思う
 
## `uniq` → `iter.unique`
```ruby:Ruby
[5, 6, 6, 7].uniq # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 6, 7].iter().unique().collect::<Vec<_>>() // => [5, 6, 7]
```
 
## `uniq {}` → `iter.unique_by`
```ruby:Ruby
[5, 6, 6, 7].uniq { |e| e } # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 6, 7].iter().unique_by(|&e| e).collect::<Vec<_>>() // => [5, 6, 7]
```
 
## `all?` → `iter.all`
```ruby:Ruby
[5, 6, 7].all? { |e| e >= 0 } # => true
```
```rust:Rust
[5, 6, 7].iter().all(|&e| e >= 0) // => true
```
 
## `any?` → `iter.any`
```ruby:Ruby
[5, 6, 7].any? { |e| e >= 6 } # => true
```
```rust:Rust
[5, 6, 7].iter().any(|&e| e >= 6) // => true
```
 
## `one? && first` → `iter.at_most_one`
```ruby:Ruby
module Enumerable
  def at_most_one
    one? && first
  end
end

[5, 6].at_most_one # => false
[5].at_most_one    # => 5
[].at_most_one     # => false
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().at_most_one()           // => Err(ExactlyOneError[First: 5, Second: 6, RemainingIter: Iter([7])])
[5].iter().at_most_one()                 // => Ok(Some(5))
Vec::<isize>::new().iter().at_most_one() // => Ok(None)
```
at most one の意味は「せいぜい1つ」
 
## `find` → `iter.find`
```ruby:Ruby
[5, 6, 7].find { |e| e == 6 } # => 6
```
```rust:Rust
[5, 6, 7].iter().find(|&&e| e == 6) // => Some(6)
```
 
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
 
## `index {}` → `iter.position`
```ruby:Ruby
[5, 6, 5].index { |e| e == 5 } # => 0
```
```rust:Rust
[5, 6, 5].iter().position(|&e| e == 5) // => Some(0)
```
 
## `rindex {}` → `iter.rposition`
```ruby:Ruby
[5, 6, 5].rindex { |e| e == 5 } # => 2
```
```rust:Rust
[5, 6, 5].iter().rposition(|&e| e == 5) // => Some(2)
```
 
## `?` → `iter.find_position`
```ruby:Ruby
module Enumerable
  def find_position(&block)
    if i = find_index(&block)
      [i, self[i]]
    end
  end
end

[5, 6, 7].find_position { |e| e > 5 } # => [1, 6]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().find_position(|&&e| e > 5) // => Some((1, 6))
```
値も返す
 
## `inject(acc) {}` → `iter.fold`
```ruby:Ruby
[5, 6, 7].inject(0, :+) # => 18
```
```rust:Rust
[5, 6, 7].iter().fold(0, |a, e| a + e) // => 18
```
 
## `inject(acc) { break }` → `iter.try_fold`
```ruby:Ruby
sum = [5, 6, 7].inject(0) {|a, e|
  if a >= 10
    break
  end
  a + e
}
sum # => nil
```
```rust:Rust
let sum = [5, 6, 7].iter().try_fold(0, |a, &e| {
    if a >= 10 {
        return None
    }
    Some(a + e)
});
sum // => None
```
 
## `inject {}` → `iter.reduce`
```ruby:Ruby
[5, 6, 7].inject(:+) # => 18
```
```rust:Rust
vec![5, 6, 7].into_iter().reduce(|a, e| a + e) // => Some(18)
```
 
## `inject { break }` → `iter.try_reduce`
```ruby:Ruby
sum = [5, 6, 7].inject {|a, e|
  if a >= 10
    break
  end
  a + e
}
sum # => nil
```
```rust:Rust (nightly)
let r = vec![5, 6, 7].into_iter().try_reduce(|a, e| {
    if a >= 10 {
       return None
    }
    Some(a + e)
});
r // => None
```
 
## `sum` → `iter.sum`
```ruby:Ruby
[5, 6, 7].sum # => 18
[].sum        # => 0
```
```rust:Rust
[5, 6, 7].iter().sum::<isize>()  // => 18
[].iter().sum::<isize>()         // => 0
```
 
## `inject(:+)` → `ter.sum1`
```ruby:Ruby
[5, 6, 7].inject(:+) # => 18
[].inject(:+)        # => nil
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().sum1::<isize>() // => Some(18)
[].iter().sum1::<isize>()        // => None
```
 
## `inject(1, :*)` → `iter.product`
```ruby:Ruby
[5, 2, 10].inject(1, :*) # => 100
[].inject(1, :*)         # => 1
```
```rust:Rust
[5, 2, 10].iter().product::<isize>() // => 100
[].iter().product::<isize>()         // => 1
```
 
## `inject(:*)` → `ter.product1`
```ruby:Ruby
[5, 2, 10].inject(:*) # => 100
[].inject(:*)         # => nil
```
```rust:Rust
use itertools::Itertools;
[5, 2, 10].iter().product1::<isize>() // => Some(100)
[].iter().product1::<isize>()         // => None
```
 
## `max` → `iter.max`
```ruby:Ruby
[5, 6, -7].max # => 6
```
```rust:Rust
[5_isize, 6, -7].iter().max() // => Some(6)
```
 
## `max_by` → `iter.max_by_key`
```ruby:Ruby
[5, 6, -7].max_by(&:abs) # => -7
```
```rust:Rust
[5_isize, 6, -7].iter().max_by_key(|e| e.abs()) // => Some(-7)
```
Rust は元の値を key と呼んでいて混乱しそう
 
## `max {}` → `iter.max_by`
```ruby:Ruby
[5, 6, -7].max { |a, b| a <=> b } # => 6
```
```rust:Rust
[5_isize, 6, -7].iter().max_by(|a, b| a.cmp(b)) // => Some(6)
```
 
## `index(max)` → `iter.position_max`
```ruby:Ruby
module Enumerable
  def position_max
    index(max)
  end
end

[5, 6, 7].position_max # => 2
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().position_max() // => Some(2)
```
 
## `min` → `iter.min`
max の逆版
 
## `min_by` → `iter.min_by_key`
max_by_key の逆版
 
## `min {}` → `iter.min_by`
max_by の逆版
 
## `index(min)` → `iter.position_min`
position_max の逆版
 
## `minmax` → `iter.minmax`
```ruby:Ruby
[5, 6, 7].minmax  # => [5, 7]
```
```rust:Rust
use itertools::Itertools;
let r = [5, 6, 7].iter().minmax();
r  // => MinMax(5, 7)

// 値を取り出す
let (min, max) = r.into_option().unwrap();
min  // => 5
max  // => 7
```
MinMaxResult 型から値を取り出す方法が難しかった
 
## `?` → `iter.position_minmax`
```ruby:Ruby
module Enumerable
  def position_minmax
    [index(min), index(max)]
  end
end

[5, 6, 7].position_minmax # => [0, 2]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().position_minmax() // => MinMax(0, 2)
```
 
## `to_enum` → `iter`
```ruby:Ruby
[5, 6, 7].to_enum # => #<Enumerator: [5, 6, 7]:each>
```
```rust:Rust
[5, 6, 7].iter()  // => Iter([5, 6, 7])
```
所有権が移動するときは into_iter で破壊的操作のときは iter_mut を使う
 
## `entries` → `iter.collect`
```ruby:Ruby
[5, 6, 7].each.entries # => [5, 6, 7]
```
```rust:Rust
[5, 6, 7].iter().collect::<Vec<_>>() // => [5, 6, 7]
```
`::<Vec<_>>` の暗号はいったい何なのでしょう
 
## `to_a` → `iter.collect_vec`
```ruby:Ruby
[5, 6, 7].each.to_a # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().collect_vec() // => [5, 6, 7]
```
Itertools を使うと簡潔に書けるようだ
 
## `each` → `iter.for_each`
```ruby:Ruby
[5, 6, 7].each { |e| p e }
# >> 5
# >> 6
# >> 7
```
```rust:Rust
[5, 6, 7].iter().for_each(|e| println!("{:?}", e));
// >> 5
// >> 6
// >> 7
```
`for` は先後が逆になって混乱するので `for_each` を使いたい。
 
## `each { break }` → `iter.try_for_each`
```ruby:Ruby
r = [5, 6, 7].each do |e|
  if e == 6
    break e * 10
  end
end
r # => 60
```
```rust:Rust
use std::ops::ControlFlow::{Break, Continue};

let r = [5, 6, 7].iter().try_for_each(|&e| {
    if e == 6 {
        return Break(e * 10)
    }
    Continue(())
});
r // => Break(60)
```
for_each で break できる版。ただ Continue を毎回呼ばないといけないのが奇妙ではある。
 
## `with_index` → `iter.enumerate`
```ruby:Ruby
["a", "b"].each.with_index.entries # => [["a", 0], ["b", 1]]
```
```rust:Rust
["a", "b"].iter().enumerate().collect::<Vec<_>>() // => [(0, "a"), (1, "b")]
```
Enumerable 的なものを連想してしまう。用語がぜんぜん違うので注意しよう。index の位置が逆なのも注意しよう。
 
## `with_index の抽象化` → `iter.with_position`
```ruby:Ruby
module Enumerable
  def with_position
    collect.with_index do |e, i|
      if size == 1
        pos = :only
      else
        if i == 0
          pos = :first
        elsif i < size - 1
          pos = :middle
        else
          pos = :last
        end
      end
      [e, pos]
    end
  end
end

[5, 6, 7].with_position  # => [[5, :first], [6, :middle], [7, :last]]
[5].with_position        # => [[5, :only]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().with_position().collect_vec() // => [First(5), Middle(6), Last(7)]
[5].iter().with_position().collect_vec()       // => [Only(5)]
```
お気に入り
 
## `tap { |e| e.each {} }` → `iter.inspect`
```ruby:Ruby
[5, 6, 7].tap { |e| p e }.entries # => [5, 6, 7]
# >> [5, 6, 7]
```
```rust:Rust
let mut v = Vec::new();
[5, 6, 7].iter().inspect(|&e| v.push(e)).collect::<Vec<_>>() // => [5, 6, 7]
v // => [5, 6, 7]
```
1つずつ要素が来るので注意
 
## `each_slice(n).collect(&:first)` → `iter.step_by(n)`
```ruby:Ruby
[5, 6, 7, 8].each_slice(2).collect(&:first) # => [5, 7]

v = [5, 6, 7, 8]
v.values_at(*0.step(v.size - 1, by: 2)) # => [5, 7]
```
```rust:Rust
[5, 6, 7, 8].iter().step_by(2).collect::<Vec<_>>() // => [5, 7]
```
 
## `zip 余り除去` → `iter.zip`
```ruby:Ruby
module Enumerable
  def zip2(*args)
    enums = [self, *args].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        y << enums.collect(&:next)
      end
    end
  end
end

[100, 200].zip2([5, 6, 7, 8]).to_a  # => [[100, 5], [200, 6]]
[5, 6, 7, 8].zip2([100, 200]).to_a  # => [[5, 100], [6, 200]]
```
```rust:Rust
[100, 200].iter().zip([5, 6, 7, 8].iter()).collect::<Vec<_>>() // => [(100, 5), (200, 6)]
[5, 6, 7, 8].iter().zip([100, 200].iter()).collect::<Vec<_>>() // => [(5, 100), (6, 200)]
```
ペアになれなかった要素は無視されるので注意しよう
 
## `zip 捨てない 詰める` → `iter.interleave`
```ruby:Ruby
module Enumerable
  def interleave(*args)
    enums = [self, *args].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        exist = false
        enums.each do |e|
          begin
            y << e.next
            exist = true
          rescue StopIteration
          end
        end
        unless exist
          break
        end
      end
    end
  end
end

[5, 6, 7, 8].interleave([100, 200]).to_a  # => [5, 100, 6, 200, 7, 8]
[100, 200].interleave([5, 6, 7, 8]).to_a  # => [100, 5, 200, 6, 7, 8]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8].iter().interleave(&[100, 200]).collect::<Vec<_>>() // => [5, 100, 6, 200, 7, 8]
[100, 200].iter().interleave(&[5, 6, 7, 8]).collect::<Vec<_>>() // => [100, 5, 200, 6, 7, 8]
```
 
## `zip 捨てない 詰める 富豪的` → `iter.zip_longest`
```ruby:Ruby
module Enumerable
  def zip_longest(other)
    a = to_enum
    b = other.to_enum
    none = Object.new
    Enumerator.new do |y|
      loop do
        l = a.next rescue none
        r = b.next rescue none
        case
        when l != none && r != none
          y << [:both, l, r]
        when l != none
          y << [:left, l]
        when r != none
          y << [:right, r]
        else
          break
        end
      end
    end
  end
end

[5, 6, 7, 8].zip_longest([100, 200]).to_a  # => [[:both, 5, 100], [:both, 6, 200], [:left, 7], [:left, 8]]
[100, 200].zip_longest([5, 6, 7, 8]).to_a  # => [[:both, 100, 5], [:both, 200, 6], [:right, 7], [:right, 8]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8].iter().zip_longest(&[100, 200]).collect::<Vec<_>>() // => [Both(5, 100), Both(6, 200), Left(7), Left(8)]
[100, 200].iter().zip_longest(&[5, 6, 7, 8]).collect::<Vec<_>>() // => [Both(100, 5), Both(200, 6), Right(7), Right(8)]
```
 
## `zip 次が無いと終わり` → `iter.interleave_shortest`
```ruby:Ruby
module Enumerable
  def interleave_shortest(*others)
    enums = [self, *others].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        enums.each do |e|
          y << e.next
        end
      end
    end
  end
end

[5, 6, 7, 8].interleave_shortest([100, 200]).to_a  # => [5, 100, 6, 200, 7]
[100, 200].interleave_shortest([5, 6, 7, 8]).to_a  # => [100, 5, 200, 6]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8].iter().interleave_shortest(&[100, 200]).collect::<Vec<_>>() // => [5, 100, 6, 200, 7]
[100, 200].iter().interleave_shortest(&[5, 6, 7, 8]).collect::<Vec<_>>() // => [100, 5, 200, 6]
```
 
## `combination` → `iter.combinations`
```ruby:Ruby
[5, 6, 7].combination(2).entries # => [[5, 6], [5, 7], [6, 7]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().combinations(2).collect::<Vec<_>>() // => [[5, 6], [5, 7], [6, 7]]
```
 
## `permutation` → `iter.permutations`
```ruby:Ruby
[5, 6, 7].permutation(2).entries # => [[5, 6], [5, 7], [6, 5], [6, 7], [7, 5], [7, 6]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().permutations(2).collect::<Vec<_>>() // => [[5, 6], [5, 7], [6, 5], [6, 7], [7, 5], [7, 6]]
```
 
## `combination の重ね掛け` → `iter.powerset`
```ruby:Ruby
module Enumerable
  def powerset
    (0..size).collect_concat do |i|
      combination(i).entries
    end
  end
end

[5, 6, 7].powerset # => [[], [5], [6], [7], [5, 6], [5, 7], [6, 7], [5, 6, 7]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().powerset().collect::<Vec<_>>() // => [[], [5], [6], [7], [5, 6], [5, 7], [6, 7], [5, 6, 7]]
```
 
## `each_cons(n)` → `windows(n)`
```ruby:Ruby
[5, 6, 7, 8].each_cons(2).entries  # => [[5, 6], [6, 7], [7, 8]]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
v.windows(2).collect::<Vec<_>>()  // => [[5, 6], [6, 7], [7, 8]]
```
これほど検索しづらいメソッド名はないかもしれない
 
## `each_cons 個数で指定しない` → `iter.tuple_windows`
```ruby:Ruby
[5, 6, 7, 8].each_cons(2).entries # => [[5, 6], [6, 7], [7, 8]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8].iter().tuple_windows::<(_, _)>().collect::<Vec<_>>() // => [(5, 6), (6, 7), (7, 8)]
```
 
## `each_cons 一周する` → `iter.circular_tuple_windows`
```ruby:Ruby
module Enumerable
  def circular_tuple_windows(n)
    size.times.collect do |i|
      n.times.collect { |j| at((i + j).modulo(size)) }
    end
  end
end

[5, 6, 7].circular_tuple_windows(2) # => [[5, 6], [6, 7], [7, 5]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().circular_tuple_windows::<(_, _)>().collect::<Vec<_>>() // => [(5, 6), (6, 7), (7, 5)]
```
 
## `each_cons 余り除去` → `iter.tuples`
```ruby:Ruby
module Enumerable
  def tuples(n)
    take((size / n) * n).each_slice(n)
  end
end

[5, 6, 7, 8, 9].tuples(2).to_a # => [[5, 6], [7, 8]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7, 8, 9].iter().tuples::<(_, _)>().collect::<Vec<_>>() // => [(5, 6), (7, 8)]
```
 
## `chunk` → `group_by`
```ruby:Ruby
[5, 6, 6, 5].chunk(&:itself).collect(&:last) # => [[5], [6, 6], [5]]
```
```rust:Rust (nightly)
[5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()  // => [[5], [6, 6], [5]]
```
メソッド名がイケてない。全体を見てグループ化してないのでせめて slice_group_by としてほしかった。
 
## `partition` → `iter.partition`
```ruby:Ruby
[5, 6, 7, 8].partition(&:even?)  # => [[6, 8], [5, 7]]
```
```rust:Rust
let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
even  // => [6, 8]
odd   // => [5, 7]
```
 
## `partition + map` → `iter.partition_map`
```ruby:Ruby
even, odd = [5, 6, 7, 8].partition(&:even?)
even                       # => [6, 8]
odd.collect { |e| e * 2 }  # => [10, 14]
```
```rust:Rust
use itertools::Itertools;
use itertools::Either;
let (even, odd): (Vec<_>, Vec<_>) = [5, 6, 7, 8].iter().partition_map(|&e| {
    if e % 2 == 0 {
        Either::Left(e)
    } else {
        Either::Right(e * 2)
    }
});
even  // => [6, 8]
odd   // => [10, 14]
```
true か false で分けるのではなく `Either::{Left, Right}` で値をラップして返す。言い変えると分けたあとで値を操作するのではなく分けながら値を操作する。わかりにくいのでよっぽどのことがなければ別々に書いた方がよさそう。
どうやらこれは partition_result の内部実装を汎用化したもので、ほぼ partition_result のためにあると思われる。
 
## `?` → `iter.partition_result`
```rust:Rust
use itertools::Itertools;

// これが
use itertools::Either;
let v = vec![Ok(5), Err(6), Ok(7), Err(8)];
let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_map(|e| {
    match e {
        Ok(v)  => Either::Left(v),
        Err(v) => Either::Right(v),
    }
});
successes // => [5, 7]
failures  // => [6, 8]

// 簡潔に書ける
let v = vec![Ok(5), Err(6), Ok(7), Err(8)];
let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_result();
successes // => [5, 7]
failures  // => [6, 8]
```
Result 型要素の配列内容を Ok と Err に分ける。配列が要素に依存したメソッドを持っているのはいいのだろうか？
 
## `partition の破壊版` → `iter_mut.partition_in_place`
```rust:Rust (nightly)
let mut ary = [5, 6, 7, 8, 9];
let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
index  // => 2
ary    // => [8, 6, 7, 5, 9]
ary[..index].iter().collect::<Vec<_>>() // => [8, 6]
ary[index..].iter().collect::<Vec<_>>() // => [7, 5, 9]
```
これだけ特殊で元を破壊するので iter でははなく **iter_mut** を使わないといけない。
ドキュメントの「個数を返す」はピンとこないので「境界のインデックスを返す」と考えた方がよさそう。

 
## `?` → `iter.is_partitioned`
```rust:Rust (nightly)
[6, 8, 5, 7, 9].iter().is_partitioned(|&e| e % 2 == 0) // => true
```
partition_in_place を適用した結果と同じなら true
 
## `each_slice` → `chunks`
```ruby:Ruby
[5, 6, 7, 8, 9].each_slice(2).entries  # => [[5, 6], [7, 8], [9]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
v.chunks(2).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
Rubyにも似た名前のメソッドがあって別の動作をすると混乱してしまう
 
## `each_slice の末尾から版` → `rchunks`
```ruby:Ruby
v = [5, 6, 7, 8, 9]
v.reverse.each_slice(2).collect(&:reverse)  # => [[8, 9], [6, 7], [5]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
v.rchunks(2).collect::<Vec<_>>()  // => [[8, 9], [6, 7], [5]]
```
 
## `chunk` → `split`
```ruby:Ruby
v = [5, 6, 0, 7, 8, 0, 9]
v.chunk { |e| e == 0 ? nil : true }.map(&:last) # => [[5, 6], [7, 8], [9]]

require "active_support/core_ext/array/grouping"
v.split(0) # => [[5, 6], [7, 8], [9]]

"5607809".split("0")  # => ["56", "78", "9"]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.split(|&e| e == 0).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
split の類似
 
## `slice_after` → `split_inclusive`
```ruby:Ruby
[5, 6, 0, 7, 8, 0, 9].slice_after { |e| e == 0 }.entries # => [[5, 6, 0], [7, 8, 0], [9]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()  // => [[5, 6, 0], [7, 8, 0], [9]]
```
境界の値を含める版
 
## `chunk の末尾から版` → `rsplit`
```ruby:Ruby
v = [5, 6, 0, 7, 8, 0, 9]
v.reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # => [[9], [7, 8], [5, 6]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // => [[9], [7, 8], [5, 6]]
```
 
## `split(?, n) の類似` → `splitn(n, ||)`
```ruby:Ruby
"5607809".split("0", 2)  # => ["56", "7809"]

v = [5, 6, 0, 7, 8, 0, 9]
n = 2
v = v.slice_after { |e| e == 0 }
v = [
  *v.take(n - 1).collect { |e| e[..-2] },
  v.drop(n - 1).flatten(1),
]
v # => [[5, 6], [7, 8, 0, 9]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.splitn(2, |&e| e == 0).collect::<Vec<_>>()  // => [[5, 6], [7, 8, 0, 9]]
```
 
## `?` → `rsplitn`
```ruby:Ruby
"5607809".reverse.split("0", 2).collect(&:reverse)  # => ["9", "56078"]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>()  // => [[9], [5, 6, 0, 7, 8]]
```
splitn の末尾から版
 
## `start_with? の類似` → `starts_with`
```ruby:Ruby
[5, 6, 7].first([5, 6].length) == [5, 6]  # => true
"567".start_with?("56")                   # => true
```
```rust:Rust
[5, 6, 7].starts_with(&[5, 6])  // => true
```
 
## `end_with? の類似` → `ends_with`
```ruby:Ruby
[5, 6, 7].last([6, 7].length) == [6, 7]  # => true
"567".end_with?("67")                    # => true
```
```rust:Rust
[5, 6, 7].ends_with(&[6, 7])  // => true
```
 
## `delete_prefix の類似` → `strip_prefix`
```ruby:Ruby
a = [5, 6, 7, 8]
b = [5, 6]
if a.first(b.size) == b
  a.drop(b.size)  # => [7, 8]
end

"5678".delete_prefix("56")  # => "78"
```
```rust:Rust
[5, 6, 7, 8].strip_prefix(&[5, 6])  // => Some([7, 8])
```
 
## `delete_suffix の類似` → `strip_suffix`
```ruby:Ruby
a = [5, 6, 7, 8]
b = [7, 8]
if a.last(b.size) == b
  a.take(a.size - b.size)      # => [5, 6]
end

"5678".delete_suffix("78")      # => "56"
```
```rust:Rust
[5, 6, 7, 8].strip_suffix(&[7, 8])  // => Some([5, 6])
```
 
## `slice!(...n) or slice!(n...)` → `take`
```ruby:Ruby
v = [5, 6, 7, 8, 9]
v.slice!(...2) # => [5, 6]
v              # => [7, 8, 9]

v = [5, 6, 7, 8, 9]
v.slice!(2...) # => [7, 8, 9]
v              # => [5, 6]
```
```rust:Rust (nightly)
let mut v: &[_] = &[5, 6, 7, 8, 9];
v.take(..2)  // => Some([5, 6])
v            // => [7, 8, 9]

let mut v: &[_] = &[5, 6, 7, 8, 9];
v.take(2..)  // => Some([7, 8, 9])
v            // => [5, 6]
```
破壊しないでほしいときは get を使おう。引数は範囲の片方しか指定しちゃいけない型なので 1..=2 とか書くとエラーになってしまう。
 
## `to_a` → `to_vec`
```ruby:Ruby
[5, 6, 7].to_a  # => [5, 6, 7]
```
```rust:Rust
let v = vec![5, 6, 7];
v.to_vec()  // => [5, 6, 7]
```
 
## `join(sep) で文字列化` → `iter.join`
```ruby:Ruby
[5, 6, 7].join("-") # => "5-6-7"
```
```rust:Rust
// これは動くのに
["a", "b", "c"].join("-")  // => "a-b-c"

// これは動かない
// [5, 6, 7].join("-")

// でもこうやると動く
use itertools::Itertools;
[5, 6, 7].iter().join("-")  // => "5-6-7"
```
文字列の配列は join できる。しかし数値の配列は join できない。でも Itertools を入れると iter 経由で join できる。
 
## `collect.join` → `iter.format_with`
```ruby:Ruby
[1.5, 1.5].collect { |e| "(%.f)" % e }.join("-") # => "(2)-(2)"
```
```rust:Rust
use itertools::Itertools;
format!("{}", [1.5, 1.5].iter().format_with("-", |e, f| f(&format_args!("({:.0})", e)))) // => "(2)-(2)"
```
format_with のときにはまだ文字列になっていない。format! を通したとき文字列になるっぽい。
 
## `collect.join の簡易版` → `iter.format`
```ruby:Ruby
s = [1.5, 1.5].collect { |e| "%.f" % e }.join("-") # => "2-2"
"<#{s}>"                                           # => "<2-2>"
```
```rust:Rust
use itertools::Itertools;
format!("<{:.0}>", [1.5, 1.5].iter().format("-")) // => "<2-2>"
```
実行順番がよくわからない
 
## `join(sep)` → `join`
```ruby:Ruby
["a", "b", "c"].join("-")                                 # => "a-b-c"
```
```rust:Rust
["a", "b", "c"].join("-")         // => "a-b-c"
```
 
## `join` → `concat`
```ruby:Ruby
["a", "b"].join             # => "ab"
```
```rust:Rust
["a", "b"].concat()        // => "ab"
```
文字列の配列だと join になる
 
## `flatten(1)` → `concat`
```ruby:Ruby
[[[5, 6]], [[7, 8]]].flatten(1) # => [[5, 6], [7, 8]]
```
```rust:Rust
[[[5, 6]], [[7, 8]]].concat() // => [[5, 6], [7, 8]]
```
同じ concat でも配列の配列の場合は flatten(1) になる
 
## `flatten(1) 区切り値追加` → `join`
```ruby:Ruby
[[4, 5], [6, 7], [8, 9]].zip([0].cycle).flatten(2)[..-2]  # => [4, 5, 0, 6, 7, 0, 8, 9]
```
```rust:Rust
[[4, 5], [6, 7], [8, 9]].join(&0) // => [4, 5, 0, 6, 7, 0, 8, 9]
```
Ruby の join は要素を文字列化するが Rust の方は配列を維持したままセパレータを入れる
 
## `flatten(1)` → `iter.flatten`
```ruby:Ruby
[[[5, 6]], [[7, 8]]].flatten(1) # => [[5, 6], [7, 8]]
```
```rust:Rust
[[[5, 6]], [[7, 8]]].iter().flatten().collect::<Vec<_>>() // => [[5, 6], [7, 8]]
```
 
## `sort` → `iter.sorted`
```ruby:Ruby
[7, 6, 5].sort  # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[7, 6, 5].iter().sorted().collect_vec()  // => [5, 6, 7]
```
 
## `sort!` → `sort`
```ruby:Ruby
v = [7, 6, 5]
v.sort!
v  # => [5, 6, 7]
```
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort();
v  // => [5, 6, 7]
```
同じ値は並び変えないらしい。そこにこだわりがなければ sort_unstable の方を使おう。
 
## `sort {}` → `iter.sorted_by`
```ruby:Ruby
[7, 6, 5].sort { |a, b| a <=> b }  # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[7, 6, 5].iter().sorted_by(|a, b| a.cmp(b)).collect_vec()  // => [5, 6, 7]
```
 
## `sort! {}` → `sort_by`
```ruby:Ruby
v = [7, 6, 5]
v.sort! { |a, b| a <=> b }
v  # => [5, 6, 7]
```
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort_by(|a, b| a.cmp(b));
v  // => [5, 6, 7]
```
 
## `sort_by ブロック呼びすぎ` → `iter.sorted_by_key`
```ruby:Ruby
[7, -6, 5].sort_by(&:abs)  # => [5, -6, 7]
```
```rust:Rust
use itertools::Itertools;
let mut c = 0;
[7_isize, -6, 5].iter().sorted_by_key(|&e| { c += 1; e.abs() }).collect::<Vec<_>>() // => [5, -6, 7]
c // => 6
```
クロージャがめっちゃ呼ばれるので注意しよう
 
## `sort_by! ブロック呼びすぎ` → `sort_by_key`
```rust:Rust
let mut v = vec![7_isize, -6, 5];
let mut c = 0;
v.sort_by_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 6
```
値を参照するたびにクロージャが呼ばれるので注意しよう。sort_by_cached_key の方を使おう。
 
## `sort_by` → `iter.sorted_by_cached_key`
```ruby:Ruby
[7, 6, 5].sort_by { |e| e }  # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[7, 6, 5].iter().sorted_by_cached_key(|&e| e).collect::<Vec<_>>() // => [5, 6, 7]
```
 
## `sort_by!` → `sort_by_cached_key`
```ruby:Ruby
v = [7, 6, 5]
v.sort_by! { |e| e }
v  # => [5, 6, 7]
```
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort_by_cached_key(|&e| e);
v  // => [5, 6, 7]
```
 
## `sort!` → `sort_unstable`
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort_unstable();
v  // => [5, 6, 7]
```
sort_unstable 系は等しい要素も並び換えるけど sort より計算量が少ないらしい。等しい要素も並び換える点はRubyも同じはず。
 
## `sort! {}` → `sort_unstable_by`
```rust:Rust
let mut v = vec![6, 8, 7, 5];
v.sort_unstable_by(|a, b| a.cmp(b));
v  // => [5, 6, 7, 8]
```
 
## `?` → `sort_unstable_by_key`
```rust:Rust
let mut v = vec![7_isize, -6, 5];
let mut c = 0;
v.sort_unstable_by_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 6
```
クロージャが要素数よりも多く呼ばれるので注意
 
## `?` → `binary_search`
```rust:Rust
[5, 7, 9].binary_search(&7)  // => Ok(1)
```
発見できたインデックスを返す。ソート済み配列だけに使える contains の速い版と考えられる。
 
## `bsearch_index` → `binary_search_by`
```ruby:Ruby
[5, 7, 9].bsearch_index { |e| e >= 6 } # => 1
```
```rust:Rust
[5, 7, 9].binary_search_by(|e| e.cmp(&5))  // => Ok(0)
[5, 7, 9].binary_search_by(|e| e.cmp(&6))  // => Err(1)
[5, 7, 9].binary_search_by(|e| e.cmp(&7))  // => Ok(1)
[5, 7, 9].binary_search_by(|e| e.cmp(&8))  // => Err(2)
[5, 7, 9].binary_search_by(|e| e.cmp(&9))  // => Ok(2)
```
条件を書くのではなく探す値を書かないといけないっぽい
 
## `?` → `binary_search_by_key`
```rust:Rust
[(0, 5), (0, 7), (0, 9)].binary_search_by_key(&7, |&(_, e)| e)  // => Ok(1)
```
 
## `squeeze! の類似` → `dedup`
```ruby:Ruby
v = [5, 5, 6, 6, 5, 5, 5]
v.replace(v.chunk(&:itself).collect(&:first))
v  # => [5, 6, 5]

v = "5566555"
v.squeeze!
v  # => "565"
```
```rust:Rust
let mut v = vec![5, 5, 6, 6, 5, 5, 5];
v.dedup();
v  // => [5, 6, 5]
```
連続する値を1つにする
 
## `squeeze! の類似` → `dedup_by_key(|e|)`
```ruby:Ruby
v = [5, 5, 6, 6, 5, 5, 5]
v.replace(v.chunk { |e| e }.collect(&:first))
v  # => [5, 6, 5]
```
```rust:Rust
let mut v = vec![5, 5, 6, 6, 5, 5, 5];
v.dedup_by_key(|e| *e);
v  // => [5, 6, 5]
```
クロージャ付きの dedup
 
## `squeeze! の類似` → `dedup_by(|a, b|)`
```ruby:Ruby
v = [5, 5, 6, 6, 5, 5, 5]
v.replace(v.chunk_while { |a, b| a == b }.collect(&:first))
v  # => [5, 6, 5]
```
```rust:Rust
let mut v = vec![5, 5, 6, 6, 5, 5, 5];
v.dedup_by(|a, b| a == b);
v  // => [5, 6, 5]
```
クロージャに引数が2つ来る dedup
 
## `?` → `partition_dedup`
```ruby:Ruby
v = [5, 5, 6, 7, 7, 6, 5, 5]
a = v.chunk(&:itself).entries
a.collect(&:first)                                   # => [5, 6, 7, 6, 5]
a.find_all { |_, e| e.length >= 2 }.collect(&:first) # => [5, 7, 5]
```
```rust:Rust (nightly)
let mut v = [5, 5, 6, 7, 7, 6, 5, 5];
let (dedup, duplicates) = v.partition_dedup();
dedup        // => [5, 6, 7, 6, 5]
duplicates   // => [5, 7, 5]
v            // => [5, 6, 7, 6, 5, 5, 7, 5]
```
他の dedup と同じだけど、ついでに連続した値たちも返す。破壊された元の値の並びは戻値のタプルの要素を結合したものになっているようだけどドキュメントに明記されていないので知らなくていいっぽい。
 
## `upcase! の類似` → `make_ascii_uppercase`
```ruby:Ruby
v = [97, 66, 99, 68]
v.replace(v.pack("c*").upcase.unpack("c*"))
v  # => [65, 66, 67, 68]

v = "aBcD"
v.upcase!
v  # => "ABCD"
```
```rust:Rust
let mut v = vec![97, 66, 99, 68];
v.make_ascii_uppercase();
v  // => [65, 66, 67, 68]
```
 
## `downcase! の類似` → `make_ascii_lowercase`
```ruby:Ruby
v = [97, 66, 99, 68]
v.replace(v.pack("c*").downcase.unpack("c*"))
v  # => [97, 98, 99, 100]

v = "aBcD"
v.downcase!
v  # => "abcd"
```
```rust:Rust
let mut v = vec![97, 66, 99, 68];
v.make_ascii_lowercase();
v  // => [97, 98, 99, 100]
```
 
## `all? { |e| (0..127).cover?(e) }` → `is_ascii`
```ruby:Ruby
[65, 66, 67].all? { |e| (0..127).cover?(e) }  # => true
```
```rust:Rust
[65, 66, 67].is_ascii()  // => true
```
配列が中の要素に依存したメソッドを持っていて違和感がある
 
## `sort.take(n)` → `iter.k_smallest(n)`
```ruby:Ruby
[6, 7, 5].sort.take(2) # => [5, 6]
```
```rust:Rust
use itertools::Itertools;
[6, 7, 5].iter().k_smallest(2).collect::<Vec<_>>() // => [5, 6]
```
 
## `<=>` → `iter.cmp`
```ruby:Ruby
[5, 6] <=> [5, 6] # => 0
```
```rust:Rust
[5, 6].iter().cmp([5, 6].iter()) // => Equal
```
 
## `?` → `iter.cmp_by`
```ruby:Ruby
it = [5, 6].to_enum
[5, 6].all? { |e| e == it.next } # => true
```
```rust:Rust (nightly)
[5, 6].iter().cmp_by(&[5, 6], |&a, &b| a.cmp(&b)) // => Equal
```
 
## `<=>` → `partial_cmp`
```ruby:Ruby
[5, 6] <=> [5, 6] # => 0
```
```rust:Rust
[5, 6].iter().partial_cmp([5, 6].iter()) // => Some(Equal)
```
Some でラップしてある
 
## `?` → `iter.partial_cmp_by`
```rust:Rust (nightly)
[5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)) // => Some(Equal)
```
Some でラップしてある
 
## `join + each ???` → `iter.intersperse`
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
セパレータは毎回固定で良いとき用。Itertools にも同名のメソッドがある。
 
## `join + each ???` → `iter.intersperse_with`
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
intersperse のクロージャ版。Itertools にも同名のメソッドがある。
 
## `chain` → `iter.chain`
```ruby:Ruby
[5, 6].chain([7, 8]).entries # => [5, 6, 7, 8]
```
```rust:Rust
[5, 6].iter().chain([7, 8].iter()).collect::<Vec<_>>() // => [5, 6, 7, 8]
```
 
## `it.next` → `it.next`
```ruby:Ruby
it = [5, 6].to_enum
it.next           # => 5
it.next           # => 6
it.next rescue $! # => #<StopIteration: iteration reached an end>
```
```rust:Rust
let mut it = [5, 6].iter();
it.next() // => Some(5)
it.next() // => Some(6)
it.next() // => None
```
 
## `it.peek` → `it.peek`
```ruby:Ruby
it = [5, 6, 7].to_enum
it.next  # => 5
it.peek  # => 6
it.next  # => 6
```
```rust:Rust
let mut it = [5, 6, 7].iter().peekable();
it.next()  // => Some(5)
it.peek()  // => Some(6)
it.next()  // => Some(6)
```
peekable すると peek が使えるようになる
 
## `?` → `it.nth`
```ruby:Ruby
it = [5, 6, 7, 8].to_enum
nth = -> n {
  n.times { it.next rescue nil }
  it.next rescue nil
}
nth[1] # => 6
nth[1] # => 8
nth[1] # => nil
```
```rust:Rust
let mut it = [5, 6, 7, 8].iter();
it.nth(1)  // => Some(6)
it.nth(1)  // => Some(8)
it.nth(1)  // => None
```
メソッド名からは想像が難しいが指定回数スキップして next する
 
## `n.times { it.next }` → `it.advance_by(n)`
```ruby:Ruby
it = [5, 6, 7].to_enum
2.times { it.next }
it.next # => 7
```
```rust:Rust (nightly)
let mut it = [5, 6, 7].iter();
it.advance_by(2) // => Ok(())
it.next()        // => Some(7)
```
 
## `?` → `it.fuse`
```ruby:Ruby
class Foo < Enumerator
  def fuse!
    @fuse = true
  end

  def next
    if @stop
      return nil
    end
    super.tap do |v|
      unless v
        if @fuse
          @stop = true
        end
      end
    end
  end
end

it = Foo.new do |y|
  0.step.cycle do |i|
    if i.even?
      y << i
    else
      y << nil
    end
  end
end

it.next  # => 0
it.next  # => nil
it.next  # => 2
it.next  # => nil
it.fuse!
it.next  # => 4
it.next  # => nil
it.next  # => nil
```
```rust:Rust
struct Foo {
    counter: isize,
}

// カウンタが偶数のときだけその値を返す
impl Iterator for Foo {
    type Item = isize;

    fn next(&mut self) -> Option<isize> {
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
it.next()  // => Some(0)
it.next()  // => None
it.next()  // => Some(2)
it.next()  // => None
let mut it = it.fuse();
it.next()  // => Some(4)
it.next()  // => None
it.next()  // => None
```
fuse を呼んだ後、最初の None が来てから None を継続する。どういうときに使うのかはわからない。
 
## `?` → `it.size_hint`
```rust:Rust
let it = ["a", "b", "c"].iter();
it.size_hint() // => (3, Some(3))
```
イテレータの残りの長さの境界(下限と上限)を返す。ってどゆこと？
 
## `?` → `iter.eq`
```rust:Rust
[1].iter().eq([1, 2].iter())  // => false
[1].iter().ne([1, 2].iter())  // => true
[1].iter().lt([1, 2].iter())  // => true
[1].iter().le([1, 2].iter())  // => true
[1].iter().gt([1, 2].iter())  // => false
[1].iter().ge([1, 2].iter())  // => false
```
 
## `?` → `iter.eq_by`
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
 
## `?` → `iter.is_sorted`
```ruby:Ruby
v = [5, 6, 7]
v == v.sort # => true
```
```rust:Rust (nightly)
[5, 6, 7].iter().is_sorted() // => true
```
 
## `?` → `is_sorted`
```rust:Rust (nightly)
[5, 6, 7].is_sorted()  // => true
```
ソートしてあるか調べるぐらいならソートすればよくね？ って思うけど、利用する側でソート済みならソートを省略するように書けばトータルで計算量を減らせたりする場合があってそれを考慮して用意されているメソッドだろうか。
 
## `?` → `is_sorted_by`
```rust:Rust (nightly)
[5, 6, 7].is_sorted_by(|a, b| a.partial_cmp(b))  // => true
```
 
## `?` → `is_sorted_by_key`
```rust:Rust (nightly)
[5_isize, -6, 7].is_sorted_by_key(|e| e.abs())  // => true
```
 
## `?` → `iter.is_sorted_by`
```ruby:Ruby
v = [5, 6, 7]
v == v.sort { |a, b| a <=> b } # => true
```
```rust:Rust (nightly)
[5, 6, 7].iter().is_sorted_by(|a, b| a.partial_cmp(b)) // => true
```
partial_cmp は Some(Less) みたいなのを返す
 
## `?` → `iter.is_sorted_by_key`
```ruby:Ruby
v = [5, -6, 7]
v == v.sort_by(&:abs) # => true
```
```rust:Rust (nightly)
[5_isize, -6, 7].iter().is_sorted_by_key(|e| e.abs()) // => true
```

 
## `?` → `select_nth_unstable`
```rust:Rust
let mut v = vec![7, 6, 5];
v.select_nth_unstable(0); // [0] が 5 になることだけは保証する
v  // => [5, 6, 7]
```
指定の位置の値だけはソート後と同じにする。ソート処理の一部分だけを切り出したような機能。いざ必要になったときこのメソッドのことを忘れている自信はある。
 
## `?` → `select_nth_unstable_by`
```rust:Rust
let mut v = vec![7, 6, 5];
v.select_nth_unstable_by(0, |a, b| a.cmp(b));
v  // => [5, 6, 7]
```
 
## `?` → `select_nth_unstable_by_key`
```rust:Rust
let mut v = vec![7_isize, 6, 5];
v.select_nth_unstable_by_key(0, |e| e.abs());
v  // => [5, 6, 7]
```
 
## `to_enum を2つ` → `iter.tee`
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
使いどころがわからないメソッド
 
