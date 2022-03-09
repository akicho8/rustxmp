| Ruby                          | Rust                       |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
|-------------------------------|----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| first                         | first                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.first%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                            |
| last                          | last                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                              |
| clear                         | clear                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.clear) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++v.clear%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                  |
| empty?                        | is_empty                   | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_empty) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+Vec%3A%3A%3Cisize%3E%3A%3Anew%28%29.is_empty%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                               |
| length                        | len                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                     |
| include?                      | contains                   | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.contains%28%266%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                             |
| slice                         | get                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281..%3D2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                        |
| push                          | push                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.push) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++v.push%287%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                   |
| pop                           | pop                        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.pop) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.pop%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                           |
| shift                         | take_first                 | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_first) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take_first%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                         |
| pop                           | take_last                  | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take_last) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take_last%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                           |
| unshift(v)                    | insert(0, v)               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+7%5D%3B%0A++++v.insert%280%2C+5%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                          |
| rotate!(n)                    | rotate_left(n)             | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_left) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.rotate_left%281%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                |
| rotate!(-n)                   | rotate_right(n)            | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rotate_right) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.rotate_right%281%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                              |
| fill                          | fill                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.fill%288%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                              |
| fill { }                      | fill_with                  | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.fill_with%28%7C%7C+8%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                             |
| delete_at                     | remove                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                    |
| insert                        | insert                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+7%5D%3B%0A++++v.insert%281%2C+6%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                          |
| select!                       | retain                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++v.retain%28%7C%26e%7C+e+%3E%3D+7%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                 |
| each_cons                     | windows                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.windows%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                              |
| chunk                         | group_by                   | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_group_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+6%2C+5%5D.group_by%28%7Ca%2C+b%7C+a+%3D%3D+b%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                        |
| a.concat(b.slice!(0..))       | append                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%5D%3B%0A++++let+mut+b+%3D+vec%21%5B7%2C+8%5D%3B%0A++++a.append%28%26mut+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                             |
| [v.take(n), v.drop(n)]        | split_at(n)                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++let+%28a%2C+b%29+%3D+v.split_at%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                              |
| slice!(n..)                   | split_off(n)               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++let+b+%3D+a.split_off%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                    |
| v[b], v[a] = v[a], v[b]       | swap(a, b)                 | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.swap%281%2C+2%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                              |
| each_slice                    | chunks                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.chunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                           |
| each_slice の後ろから版       | rchunks                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rchunks) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rchunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                         |
| chunk                         | split                      | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.split%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                               |
| slice_after                   | split_inclusive            | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_inclusive) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.split_inclusive%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                           |
| chunk の後ろから版            | rsplit                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplit%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                             |
| String#split(?, n) の配列版風 | splitn(n, \\|\\|)          | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.splitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.splitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                        |
| ?                             | rsplitn                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                      |
| String#start_with? の配列版   | starts_with                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.starts_with%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                            |
| String#end_with? の配列版     | ends_with                  | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.ends_with%28%26%5B6%2C+7%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                |
| String#delete_prefix の配列版 | strip_prefix               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_prefix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_prefix%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                     |
| String#delete_suffix の配列版 | strip_suffix               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.strip_suffix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.strip_suffix%28%26%5B7%2C+8%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                     |
| slice!(...n) or slice!(n...)  | take                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.take) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_take%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take%28..2%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%0A++++let+mut+v%3A+%26%5B_%5D+%3D+%26%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.take%282..%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021) |
| to_a                          | to_vec                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.to_vec) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.to_vec%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                          |
| join or flatten(1) ???        | concat                     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B%22a%22%5D%2C+%5B%22b%22%5D%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.concat%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                              |
| join ???                      | join                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.join%28%22-%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.join%28%260%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                          |
| v[i] = v.pop                  | swap_remove(i)             | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.swap_remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                     |
| sort!                         | sort                       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                               |
| sort! { }                     | sort_by                    | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                |
| sort_by! ???                  | sort_by_key                | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_by_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                               |
| sort_by!                      | sort_by_cached_key         | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_by_cached_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                 |
| sort!                         | sort_unstable              | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort_unstable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                             |
| sort! { }                     | sort_unstable_by           | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B6%2C+8%2C+7%2C+5%5D%3B%0A++++v.sort_unstable_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                         |
| ?                             | sort_unstable_by_key       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_unstable_by_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                             |
| ?                             | is_sorted                  | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                       |
| ?                             | is_sorted_by               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                |
| ?                             | is_sorted_by_key           | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.is_sorted_by_key) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_i32%2C+-6%2C+7%5D.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                 |
| ?                             | select_nth_unstable        | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable%280%29%3B+%2F%2F+%5B0%5D+%E3%81%8C+5+%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%93%E3%81%A8%E3%81%A0%E3%81%91%E3%81%AF%E4%BF%9D%E8%A8%BC%E3%81%99%E3%82%8B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                        |
| ?                             | select_nth_unstable_by     | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable_by%280%2C+%7Ca%2C+b%7C+a.cmp%28b%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                             |
| ?                             | select_nth_unstable_by_key | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.select_nth_unstable_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+6%2C+5%5D%3B%0A++++v.select_nth_unstable_by_key%280%2C+%7Ce%7C+e.abs%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                       |
| bsearch ???                   | binary_search              | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search%28%267%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                   |
| ?                             | binary_search_by           | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%267%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                          |
| ?                             | binary_search_by_key       | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%280%2C+5%29%2C+%280%2C+7%29%2C+%280%2C+9%29%5D.binary_search_by_key%28%267%2C+%7C%26%28_%2C+e%29%7C+e%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                             |


## `first` → `first`
```ruby:Ruby
[5, 6, 7].first  # => 5
```
```rust:Rust
let v = vec![5, 6, 7];
v.first()  // => Some(5)
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.first) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.first%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `last` → `last`
```ruby:Ruby
[5, 6, 7].last  # => 7
```
```rust:Rust
let v = vec![5, 6, 7];
v.last()  // => Some(7)
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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

## `length` → `len`
```ruby:Ruby
[5, 6].length  # => 2
```
```rust:Rust
let v = vec![5, 6];
v.len()  // => 2
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.len) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `include?` → `contains`
```ruby:Ruby
[5, 6, 7].include?(6)  # => true
```
```rust:Rust
[5, 6, 7].contains(&6)  // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.contains) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.contains%28%266%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `slice` → `get`
```ruby:Ruby
a = [5, 6, 7, 8]
a.slice(1)     # => 6
a.slice(1..2)  # => [6, 7]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
v.get(1)      // => Some(6)
v.get(1..=2)  // => Some([6, 7])
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.get%281..%3D2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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

## `fill { }` → `fill_with`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.fill_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++v.fill_with%28%7C%7C+8%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `delete_at` → `remove`
```ruby:Ruby
v = [5, 6, 7]
v.delete_at(1)  # => 6
v               # => [5, 7]
```
```rust:Rust
let mut v = vec![5, 6, 7];
v.remove(1)   // => 6
v             // => [5, 7]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++v.retain%28%7C%26e%7C+e+%3E%3D+7%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_cons` → `windows`
```ruby:Ruby
[5, 6, 7, 8].each_cons(2).entries  # => [[5, 6], [6, 7], [7, 8]]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
v.windows(2).collect::<Vec<_>>()  // => [[5, 6], [6, 7], [7, 8]]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.windows) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.windows%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `chunk` → `group_by`
```ruby:Ruby
[5, 6, 6, 5].chunk(&:itself).collect(&:last) # => [[5], [6, 6], [5]]
```
```rust:Rust (nightly)
[5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()  // => [[5], [6, 6], [5]]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.group_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28slice_group_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+6%2C+5%5D.group_by%28%7Ca%2C+b%7C+a+%3D%3D+b%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
push のエイリアスではない。引数の中身が移動する。append というより move 的な感じ。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.append) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%5D%3B%0A++++let+mut+b+%3D+vec%21%5B7%2C+8%5D%3B%0A++++a.append%28%26mut+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `[v.take(n), v.drop(n)]` → `split_at(n)`
```ruby:Ruby
v = [5, 6, 7, 8]
[v.take(2), v.drop(2)]  # => [[5, 6], [7, 8]]

v.partition.with_index { |_, i| i < 2 } # => [[5, 6], [7, 8]]
```
```rust:Rust
let v = vec![5, 6, 7, 8];
let (a, b) = v.split_at(2);
a  // => [5, 6]
b  // => [7, 8]
v  // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_at) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++let+%28a%2C+b%29+%3D+v.split_at%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `slice!(n..)` → `split_off(n)`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.split_off) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+a+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++let+b+%3D+a.split_off%282%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+a%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+b%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `v[b], v[a] = v[a], v[b]` → `swap(a, b)`
```ruby:Ruby
v = [5, 6, 7, 8]
v[2], v[1] = v[1], v[2]
v  # => [5, 7, 6, 8]
```
```rust:Rust
let mut v = vec![5, 6, 7, 8];
v.swap(1, 2)  // => ()
v             // => [5, 7, 6, 8]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.swap%281%2C+2%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_slice` → `chunks`
```ruby:Ruby
[5, 6, 7, 8, 9].each_slice(2).entries  # => [[5, 6], [7, 8], [9]]
```
```rust:Rust
let v = vec![5, 6, 7, 8, 9];
v.chunks(2).collect::<Vec<_>>()  // => [[5, 6], [7, 8], [9]]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.chunks) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.chunks%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_slice の後ろから版` → `rchunks`
```ruby:Ruby
[5, 6, 7, 8, 9].reverse.each_slice(2).collect(&:reverse)  # => [[8, 9], [6, 7], [5]]
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
String#split の配列版風
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

## `chunk の後ろから版` → `rsplit`
```ruby:Ruby
[5, 6, 0, 7, 8, 0, 9].reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # => [[9], [7, 8], [5, 6]]
```
```rust:Rust
let v = vec![5, 6, 0, 7, 8, 0, 9];
v.rsplit(|&e| e == 0).collect::<Vec<_>>()  // => [[9], [7, 8], [5, 6]]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplit%28%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `String#split(?, n) の配列版風` → `splitn(n, ||)`
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.rsplitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B5%2C+6%2C+0%2C+7%2C+8%2C+0%2C+9%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.rsplitn%282%2C+%7C%26e%7C+e+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `String#start_with? の配列版` → `starts_with`
```ruby:Ruby
[5, 6, 7].first([5, 6].length) == [5, 6]  # => true
"567".start_with?("56")                   # => true
```
```rust:Rust
[5, 6, 7].starts_with(&[5, 6])  // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.starts_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.starts_with%28%26%5B5%2C+6%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `String#end_with? の配列版` → `ends_with`
```ruby:Ruby
[5, 6, 7].last([6, 7].length) == [6, 7]  # => true
"567".end_with?("67")                    # => true
```
```rust:Rust
[5, 6, 7].ends_with(&[6, 7])  // => true
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.ends_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.ends_with%28%26%5B6%2C+7%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `String#delete_prefix の配列版` → `strip_prefix`
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

## `String#delete_suffix の配列版` → `strip_suffix`
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
引数は OneSidedRange 型なので 1..=2 とか書くとエラーになる
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

## `join or flatten(1) ???` → `concat`
```rust:Rust
["a", "b"].concat()        // => "ab"
[["a"], ["b"]].concat()    // => ["a", "b"]
[[5, 6], [7, 8]].concat()  // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.concat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B%22a%22%5D%2C+%5B%22b%22%5D%5D.concat%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.concat%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `join ???` → `join`
```rust:Rust
["a", "b"].join("-")       // => "a-b"
[[5, 6], [7, 8]].join(&0)  // => [5, 6, 0, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.join) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.join%28%22-%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.join%28%260%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
順番を気にしないのであれば O(1) で消せるのが特徴
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.swap_remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B5%2C+6%2C+7%2C+8%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v.swap_remove%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

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
同じ値は並び変えないらしい
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sort! { }` → `sort_by`
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
値を参照するたびにクロージャを呼んでいるっぽい。使いどころが難しい。
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
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_by_cached_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7_i32%2C+-6%2C+5%5D%3B%0A++++let+mut+c+%3D+0%3B%0A++++v.sort_by_cached_key%28%7Ce%7C+%7B%0A++++++++c+%2B%3D+1%3B%0A++++++++e.abs%28%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+c%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sort!` → `sort_unstable`
```rust:Rust
let mut v = vec![7, 6, 5];
v.sort_unstable();
v  // => [5, 6, 7]
```
sort_unstable 系は等しい要素も並び換えるけど sort より計算量が少ないらしい。等しい要素も並び換える点はRubyも同じはず
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.sort_unstable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+vec%21%5B7%2C+6%2C+5%5D%3B%0A++++v.sort_unstable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `sort! { }` → `sort_unstable_by`
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
指定インデックスの値だけはソート後と同じにする
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

## `bsearch ???` → `binary_search`
```ruby:Ruby
[5, 7, 9].bsearch { |e| e >= 6 } # => 7
```
```rust:Rust
[5, 7, 9].binary_search(&7)  // => Ok(1)
```
bsearch とは使い勝手がぜんぜん違う。ソート済み配列だけに使える contains の速い版だろうか。
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search%28%267%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `binary_search_by`
```rust:Rust
[5, 7, 9].binary_search_by(|e| e.cmp(&7))  // => Ok(1)
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+7%2C+9%5D.binary_search_by%28%7Ce%7C+e.cmp%28%267%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `binary_search_by_key`
```rust:Rust
[(0, 5), (0, 7), (0, 9)].binary_search_by_key(&7, |&(_, e)| e)  // => Ok(1)
```
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.binary_search_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%280%2C+5%29%2C+%280%2C+7%29%2C+%280%2C+9%29%5D.binary_search_by_key%28%267%2C+%7C%26%28_%2C+e%29%7C+e%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)
