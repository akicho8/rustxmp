| Ruby                                | Rust                        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|-------------------------------------|-----------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| length                              | len                         | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| count                               | iter.count                  | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.count%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| tally                               | iter.counts                 | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.counts) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+5%2C+6%5D.iter%28%29.counts%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| map + tally                         | iter.counts_by              | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.counts_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+5%2C+6%5D.iter%28%29.counts_by%28%7Ce%7C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| transpose                           | iter.multiunzip             | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.multiunzip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++let+v+%3D+vec%21%5B%281%2C+2%2C+3%29%2C+%284%2C+5%2C+6%29%2C+%287%2C+8%2C+9%29%5D%3B%0A++++let+%28a%2C+b%2C+c%29%3A+%28Vec%3C_%3E%2C+Vec%3C_%3E%2C+Vec%3C_%3E%29+%3D+v.into_iter%28%29.multiunzip%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| include?                            | contains                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.contains%28%266%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| slice                               | get                         | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281..%3D2%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%5B1%5D%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| first                               | first                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.first%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| first(n)                            | get(..n)                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%5D.get%28..2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| take(n)                             | get(..n)                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D.get%28..2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| take(n)                             | iter.take(n)                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.take%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| take_while                          | iter.take_while             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| last                                | last                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| last(n)                             | v.get((v.len() - n)..)      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%28%28v.len%28%29+-+2%29..%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| last                                | iter.last                   | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| clear                               | clear                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++v.clear%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| empty?                              | is_empty                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+Vec%3A%3A%3Cisize%3E%3A%3Anew%28%29.is_empty%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| drop(n)                             | get(n..)                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D.get%282..%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| drop(n) の破壊版                    | split_off(n)                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++let+b+%3D+a.split_off%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| drop(n)                             | iter.skip(n)                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.skip%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| drop_while                          | iter.skip_while             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.skip_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| [v.take(n), v.drop(n)]              | split_at(n)                 | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++let+%28a%2C+b%29+%3D+v.split_at%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| push                                | push                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.push) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++v.push%287%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| a.concat(b.slice!(0..))             | append                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%5D%3B%0A++++let+mut+b+%3D+vec%21%5B7%2C+8%5D%3B%0A++++a.append%28%26mut+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| pop                                 | pop                         | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.pop) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.pop%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| shift                               | take_first                  | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_first) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take_first%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| pop                                 | take_last                   | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_last) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take_last%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| unshift(v)                          | insert(0, v)                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+7%5D%3B%0A++++v.insert%280%2C+5%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| rotate!(n)                          | rotate_left(n)              | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.rotate_left%281%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| rotate!(-n)                         | rotate_right(n)             | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.rotate_right%281%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| reverse                             | iter.rev                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.rev%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| reverse!                            | reverse                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.reverse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.reverse%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| fill                                | fill                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.fill%288%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| fill {}                             | fill_with                   | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.fill_with%28%7C%7C+8%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| v * n                               | v.repeat(n)                 | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.repeat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.repeat%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| delete_at                           | remove                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| v[i] = v.pop                        | swap_remove(i)              | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.swap_remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| insert                              | insert                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+7%5D%3B%0A++++v.insert%281%2C+6%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| map                                 | iter.map                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.map%28%7Ce%7C+e+%2A+10%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.map%28%7Ce%7C+e+%2A+10%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| flat_map                            | iter.flat_map               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flat_map%28%7Ce%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| map の何か渡せる版                  | iter.scan                   | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B2%2C+3%5D.iter%28%29.scan%2810%2C+%7Ca%2C+%26e%7C+%7B%0A++++++++%2Aa+%2B%3D+e%3B%0A++++++++Some%28%2Aa%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| find_all                            | iter.filter                 | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B4%2C+5%2C+6%5D.iter%28%29.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| reject                              | iter.filter(\\|\\| !)       | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B4%2C+5%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.filter%28%7C%26e%7C+%21%28e+%25+2+%3D%3D+0%29%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| filter_map (find_all + collect)     | iter.filter_map             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+r+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.filter_map%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++++++++++.map%28%7Ce%7C+e+%2A+10%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| take_while + collect                | iter.map_while              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B6%2C+6%2C+7%2C+6%5D%0A++++++++.iter%28%29%0A++++++++.map_while%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B6%2C+6%2C+7%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++++++++++.map%28%7Ce%7C+e+%2A+10%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| find して何か                       | iter.find_map               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+r+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.find_map%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++if+let+Some%28v%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.find%28%7C%26e%7C+e+%25+2+%3D%3D+0%29+%7B%0A++++++++println%21%28%22%7B%3A%3F%7D%22%2C+v+%2A+10%29%3B%0A++++%7D%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| select!                             | retain                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++v.retain%28%7C%26e%7C+e+%3E%3D+7%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| reject!                             | retain(\\|\\| !)            | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++v.retain%28%7C%26e%7C+%21%28e+%3E%3D+7%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| select! しつつ要素も更新            | retain_mut                  | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain_mut) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28vec_retain_mut%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5BString%3A%3Afrom%28%22a%22%29%2C+String%3A%3Afrom%28%22b%22%29%2C+String%3A%3Afrom%28%22c%22%29%5D%3B%0A++++v.retain_mut%28%7Ce%7C+%7B%0A++++++++if+e+%3D%3D+%22b%22+%7C%7C+e+%3D%3D+%22c%22+%7B%0A++++++++++++if+e+%3D%3D+%22b%22+%7B%0A++++++++++++++++%2Ae+%3D+e.to_uppercase%28%29%3B%0A++++++++++++%7D%0A++++++++++++true%0A++++++++%7D+else+%7B%0A++++++++++++false%0A++++++++%7D%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| uniq                                | iter.unique                 | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.unique) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+6%2C+7%5D.iter%28%29.unique%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| uniq {}                             | iter.unique_by              | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.unique_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+6%2C+7%5D.iter%28%29.unique_by%28%7C%26e%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| all?                                | iter.all                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.all%28%7C%26e%7C+e+%3E%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| any?                                | iter.any                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.any%28%7C%26e%7C+e+%3E%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| find                                | iter.find                   | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| index {}                            | iter.position               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.position) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.position%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| rindex {}                           | iter.rposition              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.rposition%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ?                                   | iter.find_position          | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_position) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_position%28%7C%26%26e%7C+e+%3E+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| inject(acc) {}                      | iter.fold                   | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.fold%280%2C+%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| inject(acc) { break }               | iter.try_fold               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_fold) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+sum+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.try_fold%280%2C+%7Ca%2C+%26e%7C+%7B%0A++++++++if+a+%3E%3D+10+%7B%0A++++++++++++return+None%3B%0A++++++++%7D%0A++++++++Some%28a+%2B+e%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+sum%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| inject {}                           | iter.reduce                 | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%5D.into_iter%28%29.reduce%28%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| inject { break }                    | iter.try_reduce             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_reduce) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iterator_try_reduce%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+r+%3D+vec%21%5B5%2C+6%2C+7%5D.into_iter%28%29.try_reduce%28%7Ca%2C+e%7C+%7B%0A++++++++if+a+%3E%3D+10+%7B%0A++++++++++++return+None%3B%0A++++++++%7D%0A++++++++Some%28a+%2B+e%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| sum                                 | iter.sum                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.sum%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| inject(1, :*)                       | iter.product                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.product%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| max                                 | iter.max                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| max_by                              | iter.max_by_key             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| max {}                              | iter.max_by                 | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| v.index(v.max)                      | iter.position_max           | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_max) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.position_max%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| min                                 | iter.min                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| min_by                              | iter.min_by_key             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| min {}                              | iter.min_by                 | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| v.index(v.min)                      | iter.position_min           | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_min)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| minmax                              | iter.minmax                 | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.minmax) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++let+r+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.minmax%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%0A++++%2F%2F+%E5%80%A4%E3%82%92%E5%8F%96%E3%82%8A%E5%87%BA%E3%81%99%0A++++let+%28min%2C+max%29+%3D+r.into_option%28%29.unwrap%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+min%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+max%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ?                                   | iter.position_minmax        | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_minmax) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.position_minmax%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| combination                         | iter.combinations           | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.combinations) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.combinations%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| permutation                         | iter.permutations           | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.permutations) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.permutations%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| each_cons                           | windows                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.windows%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| chunk                               | group_by                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_group_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+6%2C+5%5D.group_by%28%7Ca%2C+b%7C+a+%3D%3D+b%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| partition                           | iter.partition              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+%28even%2C+odd%29%3A+%28Vec%3Cisize%3E%2C+Vec%3Cisize%3E%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.partition%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+even%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+odd%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| partition の破壊版                  | iter_mut.partition_in_place | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_partition_in_place%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+ary+%3D+%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++let+index+%3D+ary.iter_mut%28%29.partition_in_place%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+index%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5B..index%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5Bindex..%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ?                                   | iter.is_partitioned         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_is_partitioned%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B6%2C+8%2C+5%2C+7%2C+9%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| each_slice                          | chunks                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.chunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| each_slice の末尾から版             | rchunks                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rchunks) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rchunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| chunk                               | split                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.split%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| slice_after                         | split_inclusive             | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.split_inclusive%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| chunk の末尾から版                  | rsplit                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplit%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| split(?, n) の配列版風              | splitn(n, \\|\\|)           | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.splitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.splitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ?                                   | rsplitn                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| start_with? の配列版                | starts_with                 | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.starts_with%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| end_with? の配列版                  | ends_with                   | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.ends_with%28%26%5B6%2C+7%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| delete_prefix の配列版              | strip_prefix                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_prefix%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| delete_suffix の配列版              | strip_suffix                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_suffix%28%26%5B7%2C+8%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| slice!(...n) or slice!(n...)        | take                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take%28..2%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take%282..%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| to_a                                | to_vec                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.to_vec) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.to_vec%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| join(sep) で文字列化                | iter.join                   | [DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.join) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E3%81%93%E3%82%8C%E3%81%AF%E5%8B%95%E3%81%8F%E3%81%AE%E3%81%AB%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.join%28%22-%22%29%29%3B%0A%0A++++%2F%2F+%E3%81%93%E3%82%8C%E3%81%AF%E5%8B%95%E3%81%8B%E3%81%AA%E3%81%84%0A++++%2F%2F+%5B5%2C+6%2C+7%5D.join%28%22-%22%29%0A%0A++++%2F%2F+%E3%81%A7%E3%82%82%E3%81%93%E3%81%86%E3%82%84%E3%82%8B%E3%81%A8%E5%8B%95%E3%81%8F%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.join%28%22-%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| join(sep) ???                       | join                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.join%28%22-%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B4%2C+5%5D%2C+%5B6%2C+7%5D%2C+%5B8%2C+9%5D%5D.join%28%260%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| join or flatten(1) ???              | concat                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B%22a%22%5D%2C+%5B%22b%22%5D%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.concat%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| flatten(1)                          | iter.flatten                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flatten%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| sort!                               | sort                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| sort! {}                            | sort_by                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| sort_by! ???                        | sort_by_key                 | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_by_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| sort_by!                            | sort_by_cached_key          | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_by_cached_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| sort!                               | sort_unstable               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort_unstable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| sort! {}                            | sort_unstable_by            | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0A++++v.sort_unstable_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ?                                   | sort_unstable_by_key        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_unstable_by_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ?                                   | is_sorted                   | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ?                                   | is_sorted_by                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ?                                   | is_sorted_by_key            | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by_key) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_i32%2C+-6%2C+7%5D.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ?                                   | select_nth_unstable         | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable%280%29%3B+%2F%2F+%5B0%5D+%E3%81%8C+5+%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%93%E3%81%A8%E3%81%A0%E3%81%91%E3%81%AF%E4%BF%9D%E8%A8%BC%E3%81%99%E3%82%8B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| ?                                   | select_nth_unstable_by      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable_by%280%2C+%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ?                                   | select_nth_unstable_by_key  | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable_by_key%280%2C+%7Ce%7C+e.abs%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ?                                   | binary_search               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search%28%267%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| bsearch_index                       | binary_search_by            | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%265%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%266%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%267%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%268%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%269%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| ?                                   | binary_search_by_key        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%280%2C+5%29%2C+%280%2C+7%29%2C+%280%2C+9%29%5D.binary_search_by_key%28%267%2C+%7C%26%28_%2C+e%29%7C+e%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| squeeze! の配列版                   | dedup                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+5%2C+6%2C+6%2C+5%2C+5%2C+5%5D%3B%0A++++v.dedup%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| squeeze! の配列版風                 | dedup_by_key(\\|e\\|)       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+5%2C+6%2C+6%2C+5%2C+5%2C+5%5D%3B%0A++++v.dedup_by_key%28%7Ce%7C+%2Ae%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| squeeze! の配列版風                 | dedup_by(\\|a, b\\|)        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+5%2C+6%2C+6%2C+5%2C+5%2C+5%5D%3B%0A++++v.dedup_by%28%7Ca%2C+b%7C+a+%3D%3D+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ?                                   | partition_dedup             | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.partition_dedup) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_partition_dedup%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v+%3D+%5B5%2C+5%2C+6%2C+7%2C+7%2C+6%2C+5%2C+5%5D%3B%0A++++let+%28dedup%2C+duplicates%29+%3D+v.partition_dedup%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+dedup%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+duplicates%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| upcase! の配列版                    | make_ascii_uppercase        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.make_ascii_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B97%2C+66%2C+99%2C+68%5D%3B%0A++++v.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| downcase! の配列版                  | make_ascii_lowercase        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.make_ascii_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B97%2C+66%2C+99%2C+68%5D%3B%0A++++v.make_ascii_lowercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| all? { \\|e\\| (0..127).cover?(e) } | is_ascii                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_ascii) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B65%2C+66%2C+67%5D.is_ascii%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| to_enum                             | iter                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.iter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| entries                             | iter.collect                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.collect_vec%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| each                                | iter.for_each               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%5B5%2C+6%2C+7%5D.iter%28%29.for_each%28%7Ce%7C+println%21%28%22%7B%3A%3F%7D%22%2C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| each { break }                      | iter.try_for_each           | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_for_each) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+std%3A%3Aops%3A%3AControlFlow%3A%3A%7BBreak%2C+Continue%7D%3B%0A%0A++++let+r+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.try_for_each%28%7C%26e%7C+%7B%0A++++++++if+e+%3D%3D+6+%7B%0A++++++++++++return+Break%28e+%2A+10%29%3B%0A++++++++%7D%0A++++++++Continue%28%28%29%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| with_index                          | iter.enumerate              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.enumerate) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.iter%28%29.enumerate%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| tap { \\|e\\| e.each {} }           | iter.inspect                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.inspect) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+Vec%3A%3Anew%28%29%3B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.inspect%28%7C%26e%7C+v.push%28e%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| each_slice(n).collect(&:first)      | iter.step_by(n)             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.step_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.step_by%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| zip                                 | iter.zip                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.zip%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| <=>                                 | iter.cmp                    | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ?                                   | iter.cmp_by                 | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.cmp%28%26b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| <=>                                 | partial_cmp                 | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.partial_cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ?                                   | iter.partial_cmp_by         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.partial_cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.partial_cmp%28%26b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| join + each ???                     | iter.intersperse            | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse%28%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| join + each ???                     | iter.intersperse_with       | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D%0A++++++++++++.iter%28%29%0A++++++++++++.intersperse_with%28%7C%7C+%26%22-%22%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| chain                               | iter.chain                  | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D.iter%28%29.chain%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| it.next                             | it.next                     | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#tymethod.next) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| it.peek                             | it.peek                     | [DOC](https://doc.rust-lang.org/std/iter/struct.Peekable.html#method.peek) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.peekable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.peek%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ?                                   | it.nth                      | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| n.times { it.next }                 | it.advance_by(n)            | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.advance_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_advance_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.advance_by%282%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ?                                   | it.fuse                     | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++struct+Foo+%7B%0A++++++++counter%3A+i32%2C%0A++++%7D%0A%0A++++%2F%2F+%E3%82%AB%E3%82%A6%E3%83%B3%E3%82%BF%E3%81%8C%E5%81%B6%E6%95%B0%E3%81%AE%E3%81%A8%E3%81%8D%E3%81%A0%E3%81%91%E3%81%9D%E3%81%AE%E5%80%A4%E3%82%92%E8%BF%94%E3%81%99%0A++++impl+Iterator+for+Foo+%7B%0A++++++++type+Item+%3D+i32%3B%0A%0A++++++++fn+next%28%26mut+self%29+-%3E+Option%3Ci32%3E+%7B%0A++++++++++++let+val+%3D+self.counter%3B%0A++++++++++++self.counter+%2B%3D+1%3B%0A++++++++++++if+val+%25+2+%3D%3D+0+%7B%0A++++++++++++++++Some%28val%29%0A++++++++++++%7D+else+%7B%0A++++++++++++++++None%0A++++++++++++%7D%0A++++++++%7D%0A++++%7D%0A%0A++++let+mut+it+%3D+Foo+%7B+counter%3A+0+%7D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++let+mut+it+%3D+it.fuse%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |
| ?                                   | it.size_hint                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.size_hint%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ?                                   | iter.eq                     | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.eq%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ne%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.lt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.le%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.gt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ge%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ?                                   | iter.eq_by                  | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.eq_by%28%26%5B4%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a+%2B+a+%3D%3D+b%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ?                                   | iter.is_sorted              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ?                                   | iter.is_sorted_by           | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ?                                   | iter.is_sorted_by_key       | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by_key) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5_isize%2C+-6%2C+7%5D.iter%28%29.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |


## `length` → `len`
```ruby:Ruby
[5, 6].length  # => 2
```
```rust:Rust
let v = vec![5, 6];
v.len()  // => 2
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `count` → `iter.count`
```ruby:Ruby
[5, 6].count  # => 2
```
```rust:Rust
[5, 6].iter().count() // => 2
```
クロージャは渡せない
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.count%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `tally` → `iter.counts`
```ruby:Ruby
[5, 5, 6].tally  # => {5=>2, 6=>1}
```
```rust:Rust
use itertools::Itertools;
[5, 5, 6].iter().counts()  // => {5: 2, 6: 1}
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.counts) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+5%2C+6%5D.iter%28%29.counts%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `map + tally` → `iter.counts_by`
```ruby:Ruby
[5, 5, 6].map { |e| e }.tally  # => {5=>2, 6=>1}
```
```rust:Rust
use itertools::Itertools;
[5, 5, 6].iter().counts_by(|e| e)  // => {6: 1, 5: 2}
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.counts_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+5%2C+6%5D.iter%28%29.counts_by%28%7Ce%7C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.multiunzip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++let+v+%3D+vec%21%5B%281%2C+2%2C+3%29%2C+%284%2C+5%2C+6%29%2C+%287%2C+8%2C+9%29%5D%3B%0A++++let+%28a%2C+b%2C+c%29%3A+%28Vec%3C_%3E%2C+Vec%3C_%3E%2C+Vec%3C_%3E%29+%3D+v.into_iter%28%29.multiunzip%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `include?` → `contains`
```ruby:Ruby
[5, 6, 7].include?(6)  # => true
```
```rust:Rust
[5, 6, 7].contains(&6)  // => true
```
この `&` はどういうことだろう
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.contains%28%266%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281..%3D2%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%5B1%5D%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `first` → `first`
```ruby:Ruby
[5, 6, 7].first  # => 5
```
```rust:Rust
let v = vec![5, 6, 7];
v.first()  // => Some(5)
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.first%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `first(n)` → `get(..n)`
```ruby:Ruby
[5, 6, 7].first(2)  # => [5, 6]
```
```rust:Rust
vec![5, 6, 7].get(..2)  // => Some([5, 6])
```

[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%5D.get%28..2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `take(n)` → `get(..n)`
```ruby:Ruby
[5, 6, 7, 8, 9].take(2)  # => [5, 6]
```
```rust:Rust
vec![5, 6, 7, 8, 9].get(..2)  // => Some([5, 6])
```

[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D.get%28..2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `take(n)` → `iter.take(n)`
```ruby:Ruby
[5, 6, 7, 8].take(2)   # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take(2).collect::<Vec<_>>() // => [5, 6]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.take%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `take_while` → `iter.take_while`
```ruby:Ruby
[5, 6, 7, 8].take_while { |e| e < 7 }  # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take_while(|&&e| e < 7).collect::<Vec<_>>() // => [5, 6]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `last` → `last`
```ruby:Ruby
[5, 6, 7].last  # => 7
```
```rust:Rust
let v = vec![5, 6, 7];
v.last()  // => Some(7)
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `last(n)` → `v.get((v.len() - n)..)`
```ruby:Ruby
[5, 6, 7].last(2)  # => [6, 7]
```
```rust:Rust
let v = vec![5, 6, 7];
v.get((v.len() - 2)..)   // => Some([6, 7])
```
専用メソッドがありそうだが見つからなかった。引数は `v.len() - 2..` と書いてもいいけど読み間違いそう。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%28%28v.len%28%29+-+2%29..%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `last` → `iter.last`
```ruby:Ruby
[5, 6, 7].each.entries.last # => 7
```
```rust:Rust
[5, 6, 7].iter().last() // => Some(7)
```
iter().last() はあるのに iter().first() はない。単に最後が欲しいなら iter() を仲介しなくてよい。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++v.clear%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `empty?` → `is_empty`
```ruby:Ruby
[].empty? # => true
```
```rust:Rust
Vec::<isize>::new().is_empty() // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+Vec%3A%3A%3Cisize%3E%3A%3Anew%28%29.is_empty%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `drop(n)` → `get(n..)`
```ruby:Ruby
[5, 6, 7, 8, 9].drop(2)  # => [7, 8, 9]
```
```rust:Rust
vec![5, 6, 7, 8, 9].get(2..)  // => Some([7, 8, 9])
```

[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D.get%282..%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `drop(n) の破壊版` → `split_off(n)`
```ruby:Ruby
a = [5, 6, 7, 8]
b = a.slice!(2..)
a  # => [5, 6]
b  # => [7, 8]
```
```rust:Rust
let mut a = vec![5, 6, 7, 8];
let b = a.split_off(2);
a  // => [5, 6]
b  // => [7, 8]
```
メソッド名がイケてない。off が何の略なのかは不明。offset ？
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++let+b+%3D+a.split_off%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `drop(n)` → `iter.skip(n)`
```ruby:Ruby
[5, 6, 7, 8].drop(2)   # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip(2).collect::<Vec<_>>() // => [7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.skip%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `drop_while` → `iter.skip_while`
```ruby:Ruby
[5, 6, 7, 8].drop_while { |e| e < 7 }  # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip_while(|&&e| e < 7).collect::<Vec<_>>() // => [7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.skip_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++let+%28a%2C+b%29+%3D+v.split_at%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.push) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++v.push%287%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
push の別名ではない。中身が**移動する**ので注意。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%5D%3B%0A++++let+mut+b+%3D+vec%21%5B7%2C+8%5D%3B%0A++++a.append%28%26mut+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.pop) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.pop%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_first) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take_first%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_last) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take_last%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+7%5D%3B%0A++++v.insert%280%2C+5%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.rotate_left%281%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.rotate_right%281%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `reverse` → `iter.rev`
```ruby:Ruby
[5, 6, 7].reverse # => [7, 6, 5]
```
```rust:Rust
[5, 6, 7].iter().rev().collect::<Vec<_>>() // => [7, 6, 5]
```
Vec 自体に reverse があるけど破壊してしまう。iter 経由の rev は破壊しない。名前は合わせてほしかった。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.rev%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.reverse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.reverse%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.fill%288%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.fill_with%28%7C%7C+8%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `v * n` → `v.repeat(n)`
```ruby:Ruby
[5, 6] * 2  # => [5, 6, 5, 6]
```
```rust:Rust
[5, 6].repeat(2)  // => [5, 6, 5, 6]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.repeat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.repeat%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `v[i] = v.pop` → `swap_remove(i)`
```ruby:Ruby
v = [5, 6, 7, 8]
i = 1
r = v[i]
v[i] = v.pop
r  # => 6
v  # => [5, 8, 7]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8];
v.swap_remove(1)  // => 6
v                 // => [5, 8, 7]
```
指定の位置に最後の要素を持ってくる。詰める処理を省けるので O(1) で消せる。順序を気にしないとき用。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.swap_remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+7%5D%3B%0A++++v.insert%281%2C+6%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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

[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.map%28%7Ce%7C+e+%2A+10%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.map%28%7Ce%7C+e+%2A+10%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `flat_map` → `iter.flat_map`
```ruby:Ruby
[[5, 6], [7, 8]].flat_map(&:itself) # => [5, 6, 7, 8]
```
```rust:Rust
[[5, 6], [7, 8]].iter().flat_map(|e| e).collect::<Vec<_>>() // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flat_map%28%7Ce%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `map の何か渡せる版` → `iter.scan`
```rust:Rust
let it = [2, 3].iter().scan(10, |a, &e| {
    *a += e;
    Some(*a)
});
it.collect::<Vec<_>>() // => [12, 15]
```
書き方は inject に似ているけど map のように配列を返す
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B2%2C+3%5D.iter%28%29.scan%2810%2C+%7Ca%2C+%26e%7C+%7B%0A++++++++%2Aa+%2B%3D+e%3B%0A++++++++Some%28%2Aa%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `find_all` → `iter.filter`
```ruby:Ruby
[4, 5, 6].find_all { |e| e % 2 == 0 } # => [4, 6]
```
```rust:Rust
[4, 5, 6].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // => [4, 6]
```
元を破壊しないので retain より使いやすい
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B4%2C+5%2C+6%5D.iter%28%29.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `reject` → `iter.filter(|| !)`
```ruby:Ruby
[4, 5, 6].reject { |e| e % 2 == 0 } # => [5]
```
```rust:Rust
[4, 5, 6].iter().filter(|&e| !(e % 2 == 0)).collect::<Vec<_>>() // => [5]
```
filter の逆版は無いっぽいので filter のクロージャで返す値を反転しよう
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B4%2C+5%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.filter%28%7C%26e%7C+%21%28e+%25+2+%3D%3D+0%29%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `filter_map (find_all + collect)` → `iter.filter_map`
```ruby:Ruby
[5, 6, 7, 8].find_all(&:even?).collect { |e| e * 10 } # => [60, 80]
[5, 6, 7, 8].filter_map { |e| e * 10 if e.even? }     # => [60, 80]
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
2つのことを同時に行うメソッドは混乱してしまう。filter + map の方がわかりやすい。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+r+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.filter_map%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++++++++++.map%28%7Ce%7C+e+%2A+10%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B6%2C+6%2C+7%2C+6%5D%0A++++++++.iter%28%29%0A++++++++.map_while%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B6%2C+6%2C+7%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++++++++++.map%28%7Ce%7C+e+%2A+10%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+r+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.find_map%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++if+let+Some%28v%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.find%28%7C%26e%7C+e+%25+2+%3D%3D+0%29+%7B%0A++++++++println%21%28%22%7B%3A%3F%7D%22%2C+v+%2A+10%29%3B%0A++++%7D%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++v.retain%28%7C%26e%7C+e+%3E%3D+7%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++v.retain%28%7C%26e%7C+%21%28e+%3E%3D+7%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain_mut) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28vec_retain_mut%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5BString%3A%3Afrom%28%22a%22%29%2C+String%3A%3Afrom%28%22b%22%29%2C+String%3A%3Afrom%28%22c%22%29%5D%3B%0A++++v.retain_mut%28%7Ce%7C+%7B%0A++++++++if+e+%3D%3D+%22b%22+%7C%7C+e+%3D%3D+%22c%22+%7B%0A++++++++++++if+e+%3D%3D+%22b%22+%7B%0A++++++++++++++++%2Ae+%3D+e.to_uppercase%28%29%3B%0A++++++++++++%7D%0A++++++++++++true%0A++++++++%7D+else+%7B%0A++++++++++++false%0A++++++++%7D%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `uniq` → `iter.unique`
```ruby:Ruby
[5, 6, 6, 7].uniq # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 6, 7].iter().unique().collect::<Vec<_>>() // => [5, 6, 7]
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.unique) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+6%2C+7%5D.iter%28%29.unique%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `uniq {}` → `iter.unique_by`
```ruby:Ruby
[5, 6, 6, 7].uniq # => [5, 6, 7]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 6, 7].iter().unique_by(|&e| e).collect::<Vec<_>>() // => [5, 6, 7]
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.unique_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+6%2C+7%5D.iter%28%29.unique_by%28%7C%26e%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `all?` → `iter.all`
```ruby:Ruby
[5, 6, 7].all? { |e| e >= 0 } # => true
```
```rust:Rust
[5, 6, 7].iter().all(|&e| e >= 0) // => true
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.all%28%7C%26e%7C+e+%3E%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `any?` → `iter.any`
```ruby:Ruby
[5, 6, 7].any? { |e| e >= 6 } # => true
```
```rust:Rust
[5, 6, 7].iter().any(|&e| e >= 6) // => true
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.any%28%7C%26e%7C+e+%3E%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `find` → `iter.find`
```ruby:Ruby
[5, 6, 7].find { |e| e == 6 } # => 6
```
```rust:Rust
[5, 6, 7].iter().find(|&&e| e == 6) // => Some(6)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `index {}` → `iter.position`
```ruby:Ruby
[5, 6, 5].index { |e| e == 5 } # => 0
```
```rust:Rust
[5, 6, 5].iter().position(|&e| e == 5) // => Some(0)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.position) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.position%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `rindex {}` → `iter.rposition`
```ruby:Ruby
[5, 6, 5].rindex { |e| e == 5 } # => 2
```
```rust:Rust
[5, 6, 5].iter().rposition(|&e| e == 5) // => Some(2)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.rposition%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.find_position`
```ruby:Ruby
v = [5, 6, 7]
i = v.find_index { |e| e > 5 }
[i, v[i]]  # => [1, 6]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().find_position(|&&e| e > 5) // => Some((1, 6))
```
値も返す
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.find_position) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find_position%28%7C%26%26e%7C+e+%3E+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inject(acc) {}` → `iter.fold`
```ruby:Ruby
[5, 6, 7].inject(0, :+) # => 18
```
```rust:Rust
[5, 6, 7].iter().fold(0, |a, e| a + e) // => 18
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.fold%280%2C+%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_fold) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+sum+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.try_fold%280%2C+%7Ca%2C+%26e%7C+%7B%0A++++++++if+a+%3E%3D+10+%7B%0A++++++++++++return+None%3B%0A++++++++%7D%0A++++++++Some%28a+%2B+e%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+sum%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inject {}` → `iter.reduce`
```ruby:Ruby
[5, 6, 7].inject(:+) # => 18
```
```rust:Rust
vec![5, 6, 7].into_iter().reduce(|a, e| a + e) // => Some(18)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%5D.into_iter%28%29.reduce%28%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_reduce) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iterator_try_reduce%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+r+%3D+vec%21%5B5%2C+6%2C+7%5D.into_iter%28%29.try_reduce%28%7Ca%2C+e%7C+%7B%0A++++++++if+a+%3E%3D+10+%7B%0A++++++++++++return+None%3B%0A++++++++%7D%0A++++++++Some%28a+%2B+e%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sum` → `iter.sum`
```ruby:Ruby
[5, 6, 7].sum # => 18
```
```rust:Rust
[5, 6, 7].iter().sum::<isize>() // => 18
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.sum%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inject(1, :*)` → `iter.product`
```ruby:Ruby
[5, 6, 7].inject(1, :*) # => 210
```
```rust:Rust
[5, 6, 7].iter().product::<isize>() // => 210
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.product%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `max` → `iter.max`
```ruby:Ruby
[5, 6, -7].max # => 6
```
```rust:Rust
[5_isize, 6, -7].iter().max() // => Some(6)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `max_by` → `iter.max_by_key`
```ruby:Ruby
[5, 6, -7].max_by(&:abs) # => -7
```
```rust:Rust
[5_isize, 6, -7].iter().max_by_key(|e| e.abs()) // => Some(-7)
```
Rust は元の値を key と呼んでいる
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `max {}` → `iter.max_by`
```ruby:Ruby
[5, 6, -7].max { |a, b| a <=> b } # => 6
```
```rust:Rust
[5_isize, 6, -7].iter().max_by(|a, b| a.cmp(b)) // => Some(6)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `v.index(v.max)` → `iter.position_max`
```ruby:Ruby
v = [5, 6, 7]
v.index(v.max)  # => 2
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().position_max() // => Some(2)
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_max) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.position_max%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `min` → `iter.min`
max の逆版
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min) 

## `min_by` → `iter.min_by_key`
max_by_key の逆版
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key) 

## `min {}` → `iter.min_by`
max_by の逆版
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by) 

## `v.index(v.min)` → `iter.position_min`
position_max の逆版
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_min) 

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
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.minmax) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++let+r+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.minmax%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%0A++++%2F%2F+%E5%80%A4%E3%82%92%E5%8F%96%E3%82%8A%E5%87%BA%E3%81%99%0A++++let+%28min%2C+max%29+%3D+r.into_option%28%29.unwrap%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+min%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+max%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.position_minmax`
```ruby:Ruby
v = [5, 6, 7]
min, max = v.minmax
v.index(min)  # => 0
v.index(max)  # => 2
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().position_minmax() // => MinMax(0, 2)
```
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.position_minmax) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.position_minmax%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `combination` → `iter.combinations`
```ruby:Ruby
[5, 6, 7].combination(2).entries # => [[5, 6], [5, 7], [6, 7]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().combinations(2).collect::<Vec<_>>() // => [[5, 6], [5, 7], [6, 7]]
```
リーグ戦のような組み合わせを生成する
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.combinations) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.combinations%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `permutation` → `iter.permutations`
```ruby:Ruby
[5, 6, 7].permutation(2).entries # => [[5, 6], [5, 7], [6, 5], [6, 7], [7, 5], [7, 6]]
```
```rust:Rust
use itertools::Itertools;
[5, 6, 7].iter().permutations(2).collect::<Vec<_>>() // => [[5, 6], [5, 7], [6, 5], [6, 7], [7, 5], [7, 6]]
```
順番ありの組み合わせを生成する。先後を入れ替えて同じ人と2回戦うリーグ戦と考えると覚えやすい。
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.permutations) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.permutations%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_cons` → `windows`
```ruby:Ruby
[5, 6, 7, 8].each_cons(2).entries  # => [[5, 6], [6, 7], [7, 8]]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
v.windows(2).collect::<Vec<_>>()  // => [[5, 6], [6, 7], [7, 8]]
```
これほど検索しづらいメソッド名はないかもしれない
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.windows%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `chunk` → `group_by`
```ruby:Ruby
[5, 6, 6, 5].chunk(&:itself).collect(&:last) # => [[5], [6, 6], [5]]
```
```rust:Rust (nightly)
[5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()  // => [[5], [6, 6], [5]]
```
メソッド名がイケてない。全体を見てグループ化してないのでせめて slice_group_by としてほしかった。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_group_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+6%2C+5%5D.group_by%28%7Ca%2C+b%7C+a+%3D%3D+b%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `partition` → `iter.partition`
```ruby:Ruby
[5, 6, 7, 8].partition(&:even?)  # => [[6, 8], [5, 7]]
```
```rust:Rust
let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
even  // => [6, 8]
odd   // => [5, 7]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+%28even%2C+odd%29%3A+%28Vec%3Cisize%3E%2C+Vec%3Cisize%3E%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.partition%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+even%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+odd%29%3B%0A%7D%0A&version=nightly&edition=2021)

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

[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_partition_in_place%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+ary+%3D+%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++let+index+%3D+ary.iter_mut%28%29.partition_in_place%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+index%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5B..index%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5Bindex..%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.is_partitioned`
```rust:Rust (nightly)
[6, 8, 5, 7, 9].iter().is_partitioned(|&e| e % 2 == 0) // => true
```
partition_in_place を適用した結果と同じなら true
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_is_partitioned%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B6%2C+8%2C+5%2C+7%2C+9%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_slice` → `chunks`
```ruby:Ruby
[5, 6, 7, 8, 9].each_slice(2).entries  # => [[5, 6], [7, 8], [9]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
v.chunks(2).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
Rubyにも似た名前のメソッドがあって別の動作をすると混乱してしまう
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.chunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_slice の末尾から版` → `rchunks`
```ruby:Ruby
v = [5, 6, 7, 8, 9]
v.reverse.each_slice(2).collect(&:reverse)  # => [[8, 9], [6, 7], [5]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
v.rchunks(2).collect::<Vec<_>>()  // => [[8, 9], [6, 7], [5]]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rchunks) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rchunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
split の配列版風
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.split%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `slice_after` → `split_inclusive`
```ruby:Ruby
[5, 6, 0, 7, 8, 0, 9].slice_after { |e| e == 0 }.entries # => [[5, 6, 0], [7, 8, 0], [9]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()  // => [[5, 6, 0], [7, 8, 0], [9]]
```
境界の値を含める版
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.split_inclusive%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `chunk の末尾から版` → `rsplit`
```ruby:Ruby
v = [5, 6, 0, 7, 8, 0, 9]
v.reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # => [[9], [7, 8], [5, 6]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // => [[9], [7, 8], [5, 6]]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplit%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(?, n) の配列版風` → `splitn(n, ||)`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.splitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.splitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `rsplitn`
```ruby:Ruby
"5607809".reverse.split("0", 2).collect(&:reverse)  # => ["9", "56078"]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>()  // => [[9], [5, 6, 0, 7, 8]]
```
splitn の末尾から版
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `start_with? の配列版` → `starts_with`
```ruby:Ruby
[5, 6, 7].first([5, 6].length) == [5, 6]  # => true
"567".start_with?("56")                   # => true
```
```rust:Rust
[5, 6, 7].starts_with(&[5, 6])  // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.starts_with%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `end_with? の配列版` → `ends_with`
```ruby:Ruby
[5, 6, 7].last([6, 7].length) == [6, 7]  # => true
"567".end_with?("67")                    # => true
```
```rust:Rust
[5, 6, 7].ends_with(&[6, 7])  // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.ends_with%28%26%5B6%2C+7%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `delete_prefix の配列版` → `strip_prefix`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_prefix%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `delete_suffix の配列版` → `strip_suffix`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_suffix%28%26%5B7%2C+8%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take%28..2%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take%282..%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `to_a` → `to_vec`
```ruby:Ruby
[5, 6, 7].to_a  # => [5, 6, 7]
```
```rust:Rust
let v = vec![5, 6, 7];
v.to_vec()  // => [5, 6, 7]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.to_vec) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.to_vec%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://docs.rs/itertools/latest/itertools/trait.Itertools.html#method.join) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+%E3%81%93%E3%82%8C%E3%81%AF%E5%8B%95%E3%81%8F%E3%81%AE%E3%81%AB%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.join%28%22-%22%29%29%3B%0A%0A++++%2F%2F+%E3%81%93%E3%82%8C%E3%81%AF%E5%8B%95%E3%81%8B%E3%81%AA%E3%81%84%0A++++%2F%2F+%5B5%2C+6%2C+7%5D.join%28%22-%22%29%0A%0A++++%2F%2F+%E3%81%A7%E3%82%82%E3%81%93%E3%81%86%E3%82%84%E3%82%8B%E3%81%A8%E5%8B%95%E3%81%8F%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.join%28%22-%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `join(sep) ???` → `join`
```ruby:Ruby
["a", "b", "c"].join("-")                                 # => "a-b-c"
[[4, 5], [6, 7], [8, 9]].zip([0].cycle).flatten(2)[..-2]  # => [4, 5, 0, 6, 7, 0, 8, 9]
```
```rust:Rust
["a", "b", "c"].join("-")         // => "a-b-c"
[[4, 5], [6, 7], [8, 9]].join(&0) // => [4, 5, 0, 6, 7, 0, 8, 9]
```
よくわからない挙動をする。元が文字列でないと文字列にならないようだ。また整数には絶対 `&` をつけないといけなくて文字列なら `&` をつけてもつけなくてもよい理由もわからない。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.join%28%22-%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B4%2C+5%5D%2C+%5B6%2C+7%5D%2C+%5B8%2C+9%5D%5D.join%28%260%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `join or flatten(1) ???` → `concat`
```ruby:Ruby
["a", "b"].join             # => "ab"
[["a"], ["b"]].flatten(1)   # => ["a", "b"]
[[5, 6], [7, 8]].flatten(1) # => [5, 6, 7, 8]
```
```rust:Rust
["a", "b"].concat()        // => "ab"
[["a"], ["b"]].concat()    // => ["a", "b"]
[[5, 6], [7, 8]].concat()  // => [5, 6, 7, 8]
```
どうなっているんだこれは。flatten(1) だけど文字列の配列なら join する(？)
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B%22a%22%5D%2C+%5B%22b%22%5D%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.concat%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `flatten(1)` → `iter.flatten`
```ruby:Ruby
[[5, 6], [7, 8]].flatten(1) # => [5, 6, 7, 8]
```
```rust:Rust
[[5, 6], [7, 8]].iter().flatten().collect::<Vec<_>>() // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flatten%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sort_by! ???` → `sort_by_key`
```rust:Rust
let mut v = vec![7_i32, -6, 5];
let mut c = 0;
v.sort_by_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 6
```
値を参照するたびにクロージャが呼ばれるので注意。sort_by_cached_key の方を使おう。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_by_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sort_by!` → `sort_by_cached_key`
```ruby:Ruby
v = [7, -6, 5]
v.sort_by!(&:abs)
v  # => [5, -6, 7]
```
```rust:Rust
let mut v = vec![7_i32, -6, 5];
let mut c = 0;
v.sort_by_cached_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 3
```
欲しかったのはこっちです
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_by_cached_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sort!` → `sort_unstable`
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort_unstable();
v  // => [5, 6, 7]
```
sort_unstable 系は等しい要素も並び換えるけど sort より計算量が少ないらしい。等しい要素も並び換える点はRubyも同じはず。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort_unstable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sort! {}` → `sort_unstable_by`
```rust:Rust
let mut v = vec![6, 8, 7, 5];
v.sort_unstable_by(|a, b| a.cmp(b));
v  // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0A++++v.sort_unstable_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `sort_unstable_by_key`
```rust:Rust
let mut v = vec![7_i32, -6, 5];
let mut c = 0;
v.sort_unstable_by_key(|e| { c += 1; e.abs() });
v  // => [5, -6, 7]
c  // => 6
```
クロージャが要素数よりも多く呼ばれるので注意
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_unstable_by_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `is_sorted`
```rust:Rust (nightly)
[5, 6, 7].is_sorted()  // => true
```
ソートしてあるか調べるぐらいならソートすればよくね？ って思うけど、利用する側でソート済みならソートを省略するように書けばトータルで計算量を減らせたりする場合があってそれを考慮して用意されているメソッドだろうか。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `is_sorted_by`
```rust:Rust (nightly)
[5, 6, 7].is_sorted_by(|a, b| a.partial_cmp(b))  // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `is_sorted_by_key`
```rust:Rust (nightly)
[5_i32, -6, 7].is_sorted_by_key(|e| e.abs())  // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by_key) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_i32%2C+-6%2C+7%5D.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `select_nth_unstable`
```rust:Rust
let mut v = vec![7, 6, 5];
v.select_nth_unstable(0); // [0] が 5 になることだけは保証する
v  // => [5, 6, 7]
```
指定の位置の値だけはソート後と同じにする。ソート処理の一部分だけを切り出したような機能。いざ必要になったときこのメソッドのことを忘れている自信はある。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable%280%29%3B+%2F%2F+%5B0%5D+%E3%81%8C+5+%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%93%E3%81%A8%E3%81%A0%E3%81%91%E3%81%AF%E4%BF%9D%E8%A8%BC%E3%81%99%E3%82%8B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `select_nth_unstable_by`
```rust:Rust
let mut v = vec![7, 6, 5];
v.select_nth_unstable_by(0, |a, b| a.cmp(b));
v  // => [5, 6, 7]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable_by%280%2C+%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `select_nth_unstable_by_key`
```rust:Rust
let mut v = vec![7_i32, 6, 5];
v.select_nth_unstable_by_key(0, |e| e.abs());
v  // => [5, 6, 7]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable_by_key%280%2C+%7Ce%7C+e.abs%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `binary_search`
```rust:Rust
[5, 7, 9].binary_search(&7)  // => Ok(1)
```
発見できたインデックスを返す。ソート済み配列だけに使える contains の速い版と考えられる。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search%28%267%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%265%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%266%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%267%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%268%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%269%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `binary_search_by_key`
```rust:Rust
[(0, 5), (0, 7), (0, 9)].binary_search_by_key(&7, |&(_, e)| e)  // => Ok(1)
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%280%2C+5%29%2C+%280%2C+7%29%2C+%280%2C+9%29%5D.binary_search_by_key%28%267%2C+%7C%26%28_%2C+e%29%7C+e%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `squeeze! の配列版` → `dedup`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+5%2C+6%2C+6%2C+5%2C+5%2C+5%5D%3B%0A++++v.dedup%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `squeeze! の配列版風` → `dedup_by_key(|e|)`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+5%2C+6%2C+6%2C+5%2C+5%2C+5%5D%3B%0A++++v.dedup_by_key%28%7Ce%7C+%2Ae%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `squeeze! の配列版風` → `dedup_by(|a, b|)`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.dedup_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+5%2C+6%2C+6%2C+5%2C+5%2C+5%5D%3B%0A++++v.dedup_by%28%7Ca%2C+b%7C+a+%3D%3D+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.partition_dedup) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_partition_dedup%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v+%3D+%5B5%2C+5%2C+6%2C+7%2C+7%2C+6%2C+5%2C+5%5D%3B%0A++++let+%28dedup%2C+duplicates%29+%3D+v.partition_dedup%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+dedup%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+duplicates%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `upcase! の配列版` → `make_ascii_uppercase`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.make_ascii_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B97%2C+66%2C+99%2C+68%5D%3B%0A++++v.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `downcase! の配列版` → `make_ascii_lowercase`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.make_ascii_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B97%2C+66%2C+99%2C+68%5D%3B%0A++++v.make_ascii_lowercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `all? { |e| (0..127).cover?(e) }` → `is_ascii`
```ruby:Ruby
[65, 66, 67].all? { |e| (0..127).cover?(e) }  # => true
```
```rust:Rust
[65, 66, 67].is_ascii()  // => true
```
配列が中の要素に依存したメソッドを持っていて違和感がある
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_ascii) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B65%2C+66%2C+67%5D.is_ascii%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `to_enum` → `iter`
```ruby:Ruby
[5, 6, 7].to_enum # => #<Enumerator: [5, 6, 7]:each>
```
```rust:Rust
[5, 6, 7].iter() // => Iter([5, 6, 7])
```
いちいち `iter` を呼ばないといけない理由は、更新の有無や所有権が絡んで `iter` `iter_mut` `into_iter` などを使い分けないといけないから
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.iter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `entries` → `iter.collect`
```ruby:Ruby
[5, 6, 7].each.entries # => [5, 6, 7]
```
```rust:Rust
[5, 6, 7].iter().collect::<Vec<_>>() // => [5, 6, 7]

use itertools::Itertools;
[5, 6, 7].iter().collect_vec() // => [5, 6, 7]
```
よく使うことになると思われる。型が伝わっているときは `::<Vec<_>>` がいらない。が、いるときもあったりする。よくわからない。itertools を入れると `collect::<Vec<_>>()` がすっきり書ける。itertools は広く使われていて ActiveSupport の一部のような立ち位置のライブラリらしい。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++use+itertools%3A%3AItertools%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.collect_vec%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%5B5%2C+6%2C+7%5D.iter%28%29.for_each%28%7Ce%7C+println%21%28%22%7B%3A%3F%7D%22%2C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_for_each) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+std%3A%3Aops%3A%3AControlFlow%3A%3A%7BBreak%2C+Continue%7D%3B%0A%0A++++let+r+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.try_for_each%28%7C%26e%7C+%7B%0A++++++++if+e+%3D%3D+6+%7B%0A++++++++++++return+Break%28e+%2A+10%29%3B%0A++++++++%7D%0A++++++++Continue%28%28%29%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `with_index` → `iter.enumerate`
```ruby:Ruby
["a", "b"].each.with_index.entries # => [["a", 0], ["b", 1]]
```
```rust:Rust
["a", "b"].iter().enumerate().collect::<Vec<_>>() // => [(0, "a"), (1, "b")]
```
Enumerable 的なものを連想してしまう。用語がぜんぜん違うので注意。index の位置が逆なのも注意。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.enumerate) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.iter%28%29.enumerate%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.inspect) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+Vec%3A%3Anew%28%29%3B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.inspect%28%7C%26e%7C+v.push%28e%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_slice(n).collect(&:first)` → `iter.step_by(n)`
```ruby:Ruby
[5, 6, 7, 8].each_slice(2).collect(&:first) # => [5, 7]

v = [5, 6, 7, 8]
v.values_at(*0.step(v.size - 1, by: 2)) # => [5, 7]
```
```rust:Rust
[5, 6, 7, 8].iter().step_by(2).collect::<Vec<_>>() // => [5, 7]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.step_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.step_by%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `zip` → `iter.zip`
```ruby:Ruby
[5, 6].zip([7, 8]) # => [[5, 7], [6, 8]]
```
```rust:Rust
[5, 6].iter().zip([7, 8].iter()).collect::<Vec<_>>() // => [(5, 7), (6, 8)]
```
Rustのほうは引数が1つしか取れないし要素の数が合わないと切り捨てられたりするので注意
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.zip%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `<=>` → `iter.cmp`
```ruby:Ruby
[5, 6] <=> [5, 6] # => 0
```
```rust:Rust
[5, 6].iter().cmp([5, 6].iter()) // => Equal
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.cmp_by`
```ruby:Ruby
it = [5, 6].to_enum
[5, 6].all? { |e| e == it.next } # => true
```
```rust:Rust (nightly)
[5, 6].iter().cmp_by(&[5, 6], |&a, &b| a.cmp(&b)) // => Equal
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.cmp%28%26b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `<=>` → `partial_cmp`
```ruby:Ruby
[5, 6] <=> [5, 6] # => 0
```
```rust:Rust
[5, 6].iter().partial_cmp([5, 6].iter()) // => Some(Equal)
```
Some でラップしてある
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.partial_cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.partial_cmp_by`
```rust:Rust (nightly)
[5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)) // => Some(Equal)
```
Some でラップしてある
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.partial_cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.partial_cmp%28%26b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `join + each ???` → `iter.intersperse`
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
セパレータは毎回固定で良いとき用
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse%28%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `join + each ???` → `iter.intersperse_with`
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
intersperse のクロージャ版
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D%0A++++++++++++.iter%28%29%0A++++++++++++.intersperse_with%28%7C%7C+%26%22-%22%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `chain` → `iter.chain`
```ruby:Ruby
[5, 6].chain([7, 8]).entries # => [5, 6, 7, 8]
```
```rust:Rust
[5, 6].iter().chain([7, 8].iter()).collect::<Vec<_>>() // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D.iter%28%29.chain%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#tymethod.next) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/struct.Peekable.html#method.peek) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.peekable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.peek%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.advance_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_advance_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.advance_by%282%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
    counter: i32,
}

// カウンタが偶数のときだけその値を返す
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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++struct+Foo+%7B%0A++++++++counter%3A+i32%2C%0A++++%7D%0A%0A++++%2F%2F+%E3%82%AB%E3%82%A6%E3%83%B3%E3%82%BF%E3%81%8C%E5%81%B6%E6%95%B0%E3%81%AE%E3%81%A8%E3%81%8D%E3%81%A0%E3%81%91%E3%81%9D%E3%81%AE%E5%80%A4%E3%82%92%E8%BF%94%E3%81%99%0A++++impl+Iterator+for+Foo+%7B%0A++++++++type+Item+%3D+i32%3B%0A%0A++++++++fn+next%28%26mut+self%29+-%3E+Option%3Ci32%3E+%7B%0A++++++++++++let+val+%3D+self.counter%3B%0A++++++++++++self.counter+%2B%3D+1%3B%0A++++++++++++if+val+%25+2+%3D%3D+0+%7B%0A++++++++++++++++Some%28val%29%0A++++++++++++%7D+else+%7B%0A++++++++++++++++None%0A++++++++++++%7D%0A++++++++%7D%0A++++%7D%0A%0A++++let+mut+it+%3D+Foo+%7B+counter%3A+0+%7D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++let+mut+it+%3D+it.fuse%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `it.size_hint`
```rust:Rust
let it = ["a", "b", "c"].iter();
it.size_hint() // => (3, Some(3))
```
イテレータの残りの長さの境界(下限と上限)を返す。ってどゆこと？
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.size_hint%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.eq`
```rust:Rust
[1].iter().eq([1, 2].iter())  // => false
[1].iter().ne([1, 2].iter())  // => true
[1].iter().lt([1, 2].iter())  // => true
[1].iter().le([1, 2].iter())  // => true
[1].iter().gt([1, 2].iter())  // => false
[1].iter().ge([1, 2].iter())  // => false
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.eq%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ne%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.lt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.le%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.gt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ge%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.eq_by%28%26%5B4%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a+%2B+a+%3D%3D+b%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.is_sorted`
```ruby:Ruby
v = [5, 6, 7]
v == v.sort # => true
```
```rust:Rust (nightly)
[5, 6, 7].iter().is_sorted() // => true
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.is_sorted_by`
```ruby:Ruby
v = [5, 6, 7]
v == v.sort { |a, b| a <=> b } # => true
```
```rust:Rust (nightly)
[5, 6, 7].iter().is_sorted_by(|a, b| a.partial_cmp(b)) // => true
```
partial_cmp は Some(Less) みたいなのを返す
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `iter.is_sorted_by_key`
```ruby:Ruby
v = [5, -6, 7]
v == v.sort_by(&:abs) # => true
```
```rust:Rust (nightly)
[5_isize, -6, 7].iter().is_sorted_by_key(|e| e.abs()) // => true
```

[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by_key) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5_isize%2C+-6%2C+7%5D.iter%28%29.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)
