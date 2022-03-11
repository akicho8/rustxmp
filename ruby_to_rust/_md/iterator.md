| Ruby                           | Rust               |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|--------------------------------|--------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| to_enum                        | iter               | [DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.iter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| entries                        | collect            | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| each                           | for_each           | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%5B5%2C+6%2C+7%5D.iter%28%29.for_each%28%7Ce%7C+println%21%28%22%7B%3A%3F%7D%22%2C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| each + break                   | try_for_each       | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_for_each) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+std%3A%3Aops%3A%3AControlFlow%3A%3A%7BBreak%2C+Continue%7D%3B%0A%0A++++let+r+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.try_for_each%28%7C%26e%7C+%7B%0A++++++++if+e+%3D%3D+6+%7B%0A++++++++++++return+Break%28e+%2A+10%29%3B%0A++++++++%7D%0A++++++++Continue%28%28%29%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| tap { \\|e\\| e.each {} }      | inspect            | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.inspect) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+v+%3D+Vec%3A%3Anew%28%29%3B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.inspect%28%7C%26e%7C+v.push%28e%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| reverse                        | rev                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.rev%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| map                            | map                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.map%28%7Ce%7C+e+%2A+10%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| find_all                       | filter             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B4%2C+5%2C+6%5D.iter%28%29.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| find_all + collect             | filter_map         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+r+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.filter_map%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++++++++++.map%28%7Ce%7C+e+%2A+10%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| find して何か                  | find_map           | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+r+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.find_map%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++if+let+Some%28v%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.find%28%7C%26e%7C+e+%25+2+%3D%3D+0%29+%7B%0A++++++++println%21%28%22%7B%3A%3F%7D%22%2C+v+%2A+10%29%3B%0A++++%7D%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| take_while + collect           | map_while          | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.map_while%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++++++++++.map%28%7Ce%7C+e+%2A+10%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| map の何か渡せる版             | scan               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B2%2C+3%5D.iter%28%29.scan%2810%2C+%7Ca%2C+%26e%7C+%7B%0A++++++++%2Aa+%2B%3D+e%3B%0A++++++++Some%28%2Aa%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| take                           | take               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.take%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| take_while                     | take_while         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| drop                           | skip               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.skip%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| drop_while                     | skip_while         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.skip_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| each_slice(n).collect(&:first) | step_by(n)         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.step_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.step_by%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| zip                            | zip                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.zip%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| with_index                     | enumerate          | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.enumerate) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.iter%28%29.enumerate%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| flatten(1)                     | flatten            | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flatten%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| flat_map                       | flat_map           | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flat_map%28%7Ce%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| partition                      | partition          | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+%28even%2C+odd%29%3A+%28Vec%3Cisize%3E%2C+Vec%3Cisize%3E%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.partition%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+even%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+odd%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| partition の破壊版             | partition_in_place | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_partition_in_place%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+ary+%3D+%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++let+index+%3D+ary.iter_mut%28%29.partition_in_place%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+index%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5B..index%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5Bindex..%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| ?                              | is_partitioned     | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_is_partitioned%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B6%2C+8%2C+5%2C+7%2C+9%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| count                          | count              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.count%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| inject(0, :+)                  | fold               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.fold%280%2C+%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| inject(0, :+) + break          | try_fold           | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_fold) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+sum+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.try_fold%280%2C+%7Ca%2C+%26e%7C+%7B%0A++++++++if+a+%3E%3D+10+%7B%0A++++++++++++return+None%3B%0A++++++++%7D%0A++++++++Some%28a+%2B+e%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+sum%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| inject(&:+)                    | reduce             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%5D.into_iter%28%29.reduce%28%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| inject(:+) + break             | try_reduce         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.try_reduce) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iterator_try_reduce%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+r+%3D+vec%21%5B5%2C+6%2C+7%5D.into_iter%28%29.try_reduce%28%7Ca%2C+e%7C+%7B%0A++++++++if+a+%3E%3D+10+%7B%0A++++++++++++return+None%3B%0A++++++++%7D%0A++++++++Some%28a+%2B+e%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| sum                            | sum                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.sum%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| inject(1, :*)                  | product            | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.product%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| all?                           | all                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.all%28%7C%26e%7C+e+%3E%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| any?                           | any                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.any%28%7C%26e%7C+e+%3E%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| find                           | find               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| index {}                       | position           | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.position) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.position%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| rindex {}                      | rposition          | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.rposition%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| <=>                            | cmp                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ?                              | cmp_by             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.cmp%28%26b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| <=>                            | partial_cmp        | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.partial_cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ?                              | partial_cmp_by     | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.partial_cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.partial_cmp%28%26b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| last                           | last               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.last%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| max                            | max                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| max_by                         | max_by_key         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| max {}                         | max_by             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| min                            | min                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| min_by                         | min_by_key         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| min {}                         | min_by             | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| join + each ???                | intersperse        | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse%28%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| join + each ???                | intersperse_with   | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D%0A++++++++++++.iter%28%29%0A++++++++++++.intersperse_with%28%7C%7C+%26%22-%22%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| chain                          | chain              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D.iter%28%29.chain%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| next                           | next               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#tymethod.next) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| peek                           | peek               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.peekable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.peekable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.peek%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ?                              | nth                | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| ?                              | advance_by         | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.advance_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_advance_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.advance_by%282%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ?                              | fuse               | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++struct+Foo+%7B%0A++++++++counter%3A+i32%2C%0A++++%7D%0A%0A++++%2F%2F+%E3%82%AB%E3%82%A6%E3%83%B3%E3%82%BF%E3%81%8C%E5%81%B6%E6%95%B0%E3%81%AE%E3%81%A8%E3%81%8D%E3%81%A0%E3%81%91%E3%81%9D%E3%81%AE%E5%80%A4%E3%82%92%E8%BF%94%E3%81%99%0A++++impl+Iterator+for+Foo+%7B%0A++++++++type+Item+%3D+i32%3B%0A%0A++++++++fn+next%28%26mut+self%29+-%3E+Option%3Ci32%3E+%7B%0A++++++++++++let+val+%3D+self.counter%3B%0A++++++++++++self.counter+%2B%3D+1%3B%0A++++++++++++if+val+%25+2+%3D%3D+0+%7B%0A++++++++++++++++Some%28val%29%0A++++++++++++%7D+else+%7B%0A++++++++++++++++None%0A++++++++++++%7D%0A++++++++%7D%0A++++%7D%0A%0A++++let+mut+it+%3D+Foo+%7B+counter%3A+0+%7D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++let+mut+it+%3D+it.fuse%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021) |
| ?                              | size_hint          | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.size_hint%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ?                              | eq ne lt le gt ge  | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.ge) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.eq%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ne%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.lt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.le%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.gt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ge%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ?                              | eq_by              | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.eq_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B2%2C+3%5D.iter%28%29.eq_by%28%26%5B4%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a+%2B+a+%3D%3D+b%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ?                              | is_sorted          | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ?                              | is_sorted_by       | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ?                              | is_sorted_by_key   | [DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by_key) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5_isize%2C+-6%2C+7%5D.iter%28%29.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |


## `to_enum` → `iter`
```ruby:Ruby
[5, 6, 7].to_enum # => #<Enumerator: [5, 6, 7]:each>
```
```rust:Rust
[5, 6, 7].iter() // => Iter([5, 6, 7])
```
いちいち `iter` を呼ばないといけない理由は、更新の有無や所有権が絡んで `iter` `iter_mut` `into_iter` などを使い分けないといけないから
[DOC](https://doc.rust-lang.org/std/vec/struct.Vec.html#method.iter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `entries` → `collect`
```ruby:Ruby
[5, 6, 7].each.entries # => [5, 6, 7]
```
```rust:Rust
[5, 6, 7].iter().collect::<Vec<_>>() // => [5, 6, 7]
```
よく使うことになると思われる。型が伝わっているときは `::<Vec<_>>` がいらない。が、いるときもあったりする。よくわからない。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.collect) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each` → `for_each`
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
`for` は先後が逆になって混乱するので `for_each` を使いたい
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.for_each) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%5B5%2C+6%2C+7%5D.iter%28%29.for_each%28%7Ce%7C+println%21%28%22%7B%3A%3F%7D%22%2C+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each + break` → `try_for_each`
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

## `tap { |e| e.each {} }` → `inspect`
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

## `reverse` → `rev`
```ruby:Ruby
[5, 6, 7].reverse # => [7, 6, 5]
```
```rust:Rust
[5, 6, 7].iter().rev().collect::<Vec<_>>() // => [7, 6, 5]
```
Vec 自体に reverse があるけど破壊してしまう。iter 経由の rev は破壊しない。ただ名前は合わせてほしかった。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rev) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.rev%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `map` → `map`
```ruby:Ruby
[5, 6, 7].map { |e| e * 10 } # => [50, 60, 70]
```
```rust:Rust
[5, 6, 7].iter().map(|e| e * 10).collect::<Vec<_>>() // => [50, 60, 70]
```
元を破壊しないので使いやすい
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.map%28%7Ce%7C+e+%2A+10%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `find_all` → `filter`
```ruby:Ruby
[4, 5, 6].find_all { |e| e % 2 == 0 } # => [4, 6]
```
```rust:Rust
[4, 5, 6].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() // => [4, 6]
```
元を破壊しないので retain より使いやすい
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.filter) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B4%2C+5%2C+6%5D.iter%28%29.filter%28%7C%26e%7C+e+%25+2+%3D%3D+0%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `find_all + collect` → `filter_map`
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

## `find して何か` → `find_map`
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
map は繰り返しのイメージがあるがただの find と考えた方がいい。見つけたら(Someを1回返したら)終了。よっぽどのことがなければ find した後で何かした方がわかりやすい。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+r+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.find_map%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+r%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++if+let+Some%28v%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.find%28%7C%26e%7C+e+%25+2+%3D%3D+0%29+%7B%0A++++++++println%21%28%22%7B%3A%3F%7D%22%2C+v+%2A+10%29%3B%0A++++%7D%0A%7D%0A&version=nightly&edition=2021)

## `take_while + collect` → `map_while`
```ruby:Ruby
[5, 6, 7, 8].take_while(&:even?).collect { |e| e * 10 } # => []
```
```rust:Rust
let it = [5, 6, 7, 8].iter().map_while(|&e| {
    if e % 2 == 0 {
        Some(e * 10)
    } else {
        None
    }
});
it.collect::<Vec<_>>() // => []

// 混乱しにくい書き方
[5, 6, 7, 8].iter().take_while(|&e| e % 2 == 0).map(|e| e * 10).collect::<Vec<_>>() // => []
```
filter_map の先頭から続く有効なものだけ版。take_while + map の方がわかりやすい。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.map_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B5%2C+6%2C+7%2C+8%5D%0A++++++++.iter%28%29%0A++++++++.map_while%28%7C%26e%7C+if+e+%25+2+%3D%3D+0+%7B+Some%28e+%2A+10%29+%7D+else+%7B+None+%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%0A++++%2F%2F+%E6%B7%B7%E4%B9%B1%E3%81%97%E3%81%AB%E3%81%8F%E3%81%84%E6%9B%B8%E3%81%8D%E6%96%B9%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++++++++++.map%28%7Ce%7C+e+%2A+10%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `map の何か渡せる版` → `scan`
```rust:Rust
let it = [2, 3].iter().scan(10, |a, &e| {
    *a += e;
    Some(*a)
});
it.collect::<Vec<_>>() // => [12, 15]
```

[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.scan) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B2%2C+3%5D.iter%28%29.scan%2810%2C+%7Ca%2C+%26e%7C+%7B%0A++++++++%2Aa+%2B%3D+e%3B%0A++++++++Some%28%2Aa%29%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `take` → `take`
```ruby:Ruby
[5, 6, 7, 8].take(2)   # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take(2).collect::<Vec<_>>() // => [5, 6]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.take%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `take_while` → `take_while`
```ruby:Ruby
[5, 6, 7, 8].take_while { |e| e < 7 }  # => [5, 6]
```
```rust:Rust
[5, 6, 7, 8].iter().take_while(|&&e| e < 7).collect::<Vec<_>>() // => [5, 6]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.take_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.take_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `drop` → `skip`
```ruby:Ruby
[5, 6, 7, 8].drop(2)   # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip(2).collect::<Vec<_>>() // => [7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.skip%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `drop_while` → `skip_while`
```ruby:Ruby
[5, 6, 7, 8].drop_while { |e| e < 7 }  # => [7, 8]
```
```rust:Rust
[5, 6, 7, 8].iter().skip_while(|&&e| e < 7).collect::<Vec<_>>() // => [7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.skip_while) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%2C+8%5D%0A++++++++++++.iter%28%29%0A++++++++++++.skip_while%28%7C%26%26e%7C+e+%3C+7%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `each_slice(n).collect(&:first)` → `step_by(n)`
```ruby:Ruby
[5, 6, 7, 8].each_slice(2).collect(&:first) # => [5, 7]

v = [5, 6, 7, 8]
v.values_at(*0.step(v.size - 1, by: 2)) # => [5, 7]
```
```rust:Rust
[5, 6, 7, 8].iter().step_by(2).collect::<Vec<_>>() // => [5, 7]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.step_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.step_by%282%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `zip` → `zip`
```ruby:Ruby
[5, 6, 7].zip([7, 8]) # => [[5, 7], [6, 8], [7, nil]]
```
```rust:Rust
[5, 6, 7].iter().zip([7, 8].iter()).collect::<Vec<_>>() // => [(5, 7), (6, 8)]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.zip) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.zip%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `with_index` → `enumerate`
```ruby:Ruby
["a", "b"].each.with_index.entries # => [["a", 0], ["b", 1]]
```
```rust:Rust
["a", "b"].iter().enumerate().collect::<Vec<_>>() // => [(0, "a"), (1, "b")]
```
Enumerable 的なものを連想してしまう。用語がぜんぜん違うので注意。index の位置が逆なのも注意。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.enumerate) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B%22a%22%2C+%22b%22%5D.iter%28%29.enumerate%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `flatten(1)` → `flatten`
```ruby:Ruby
[[5, 6], [7, 8]].flatten(1) # => [5, 6, 7, 8]
```
```rust:Rust
[[5, 6], [7, 8]].iter().flatten().collect::<Vec<_>>() // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flatten) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flatten%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `flat_map` → `flat_map`
```ruby:Ruby
[[5, 6], [7, 8]].flat_map(&:itself) # => [5, 6, 7, 8]
```
```rust:Rust
[[5, 6], [7, 8]].iter().flat_map(|e| e).collect::<Vec<_>>() // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.flat_map) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%5B5%2C+6%5D%2C+%5B7%2C+8%5D%5D.iter%28%29.flat_map%28%7Ce%7C+e%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `partition` → `partition`
```ruby:Ruby
[5, 6, 7, 8].partition(&:even?)  # => [[6, 8], [5, 7]]
```
```rust:Rust
let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
even  // => [6, 8]
odd   // => [5, 7]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+%28even%2C+odd%29%3A+%28Vec%3Cisize%3E%2C+Vec%3Cisize%3E%29+%3D+%5B5%2C+6%2C+7%2C+8%5D.iter%28%29.partition%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+even%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+odd%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `partition の破壊版` → `partition_in_place`
```rust:Rust (nightly)
let mut ary = [5, 6, 7, 8, 9];
let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
index  // => 2
ary    // => [8, 6, 7, 5, 9]
ary[..index].iter().collect::<Vec<_>>() // => [8, 6]
ary[index..].iter().collect::<Vec<_>>() // => [7, 5, 9]
```
使いづらい。ドキュメントの「個数を返す」はピンとこないので「境界のインデックスを返す」と考えた方がよさそう。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partition_in_place) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_partition_in_place%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+ary+%3D+%5B5%2C+6%2C+7%2C+8%2C+9%5D%3B%0A++++let+index+%3D+ary.iter_mut%28%29.partition_in_place%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+index%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5B..index%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ary%5Bindex..%5D.iter%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `is_partitioned`
```rust:Rust (nightly)
[6, 8, 5, 7, 9].iter().is_partitioned(|&e| e % 2 == 0) // => true
```
partition_in_place を適用した結果と同じなら true
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_partitioned) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_is_partitioned%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B6%2C+8%2C+5%2C+7%2C+9%5D.iter%28%29.is_partitioned%28%7C%26e%7C+e+%25+2+%3D%3D+0%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `count` → `count`
```ruby:Ruby
[5, 6, 7].each.count # => 3
[5, 6, 7].count      # => 3
```
```rust:Rust
[5, 6, 7].iter().count() // => 3
[5, 6, 7].len()          // => 3
```
統一してほしい
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.count) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.count%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inject(0, :+)` → `fold`
```ruby:Ruby
[5, 6, 7].inject(0, :+) # => 18
```
```rust:Rust
[5, 6, 7].iter().fold(0, |a, e| a + e) // => 18
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fold) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.fold%280%2C+%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inject(0, :+) + break` → `try_fold`
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

## `inject(&:+)` → `reduce`
```ruby:Ruby
[5, 6, 7].inject(:+) # => 18
```
```rust:Rust
vec![5, 6, 7].into_iter().reduce(|a, e| a + e) // => Some(18)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.reduce) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+vec%21%5B5%2C+6%2C+7%5D.into_iter%28%29.reduce%28%7Ca%2C+e%7C+a+%2B+e%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inject(:+) + break` → `try_reduce`
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

## `sum` → `sum`
```ruby:Ruby
[5, 6, 7].sum # => 18
```
```rust:Rust
[5, 6, 7].iter().sum::<isize>() // => 18
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.sum) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.sum%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inject(1, :*)` → `product`
```ruby:Ruby
[5, 6, 7].inject(1, :*) # => 210
```
```rust:Rust
[5, 6, 7].iter().product::<isize>() // => 210
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.product) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.product%3A%3A%3Cisize%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `all?` → `all`
```ruby:Ruby
[5, 6, 7].all? { |e| e >= 0 } # => true
```
```rust:Rust
[5, 6, 7].iter().all(|&e| e >= 0) // => true
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.all) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.all%28%7C%26e%7C+e+%3E%3D+0%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `any?` → `any`
```ruby:Ruby
[5, 6, 7].any? { |e| e >= 6 } # => true
```
```rust:Rust
[5, 6, 7].iter().any(|&e| e >= 6) // => true
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.any) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.any%28%7C%26e%7C+e+%3E%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `find` → `find`
```ruby:Ruby
[5, 6, 7].find { |e| e == 6 } # => 6
```
```rust:Rust
[5, 6, 7].iter().find(|&&e| e == 6) // => Some(6)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.find) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.find%28%7C%26%26e%7C+e+%3D%3D+6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `index {}` → `position`
```ruby:Ruby
[5, 6, 5].index { |e| e == 5 } # => 0
```
```rust:Rust
[5, 6, 5].iter().position(|&e| e == 5) // => Some(0)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.position) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.position%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `rindex {}` → `rposition`
```ruby:Ruby
[5, 6, 5].rindex { |e| e == 5 } # => 2
```
```rust:Rust
[5, 6, 5].iter().rposition(|&e| e == 5) // => Some(2)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.rposition) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+5%5D.iter%28%29.rposition%28%7C%26e%7C+e+%3D%3D+5%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `<=>` → `cmp`
```ruby:Ruby
[5, 6] <=> [5, 6] # => 0
```
```rust:Rust
[5, 6].iter().cmp([5, 6].iter()) // => Equal
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.cmp) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%5D.iter%28%29.cmp%28%5B5%2C+6%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `cmp_by`
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

## `?` → `partial_cmp_by`
```rust:Rust (nightly)
[5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)) // => Some(Equal)
```
Some でラップしてある
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.partial_cmp_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_order_by%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D%0A++++++++++++.iter%28%29%0A++++++++++++.partial_cmp_by%28%26%5B5%2C+6%5D%2C+%7C%26a%2C+%26b%7C+a.partial_cmp%28%26b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `last` → `last`
```ruby:Ruby
[5, 6, 7].last              # => 7
[5, 6, 7].each.entries.last # => 7
```
```rust:Rust
[5, 6, 7].last()        // => Some(7)
[5, 6, 7].iter().last() // => Some(7)
```
iter().last() はあるのに iter().first() はない。単に最後が欲しいなら iter() を仲介しなくてよい。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.last) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.last%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.last%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `max` → `max`
```ruby:Ruby
[5, 6, -7].max # => 6
```
```rust:Rust
[5_isize, 6, -7].iter().max() // => Some(6)
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `max_by` → `max_by_key`
```ruby:Ruby
[5, 6, -7].max_by(&:abs) # => -7
```
```rust:Rust
[5_isize, 6, -7].iter().max_by_key(|e| e.abs()) // => Some(-7)
```
Rust は元の値を key と呼んでいる
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by_key) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by_key%28%7Ce%7C+e.abs%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `max {}` → `max_by`
```ruby:Ruby
[5, 6, -7].max { |a, b| a <=> b }.max # => 
# ~> -:1:in `<main>': undefined method `max' for 6:Integer (NoMethodError)
```
```rust:Rust
[5_isize, 6, -7].iter().max_by(|a, b| a.cmp(b)) // => Some(6)
```
使いづらい
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.max_by) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5_isize%2C+6%2C+-7%5D.iter%28%29.max_by%28%7Ca%2C+b%7C+a.cmp%28b%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `min` → `min`
使い方は max と同じ
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min) 

## `min_by` → `min_by_key`
使い方は max_by_key と同じ
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by_key) 

## `min {}` → `min_by`
使い方は max_by と同じ
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.min_by) 

## `join + each ???` → `intersperse`
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
セパレータは毎回固定で良いとき用
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29.intersperse%28%26%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `join + each ???` → `intersperse_with`
```rust:Rust (nightly)
["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>() // => ["a", "-", "b", "-", "c"]
```
intersperse のクロージャ版
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.intersperse_with) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28iter_intersperse%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B%22a%22%2C+%22b%22%2C+%22c%22%5D%0A++++++++++++.iter%28%29%0A++++++++++++.intersperse_with%28%7C%7C+%26%22-%22%29%0A++++++++++++.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `chain` → `chain`
```ruby:Ruby
[5, 6].chain([7, 8]).entries # => [5, 6, 7, 8]
```
```rust:Rust
[5, 6].iter().chain([7, 8].iter()).collect::<Vec<_>>() // => [5, 6, 7, 8]
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.chain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%5D.iter%28%29.chain%28%5B7%2C+8%5D.iter%28%29%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `next` → `next`
```ruby:Ruby
it = [5, 6].each
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

## `peek` → `peek`
```ruby:Ruby
it = [5, 6, 7].each
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
peekable しないと peek は使えない
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.peekable) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29.peekable%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.peek%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `nth`
```rust:Rust
let mut it = [5, 6, 7].iter();
it.nth(1)  // => Some(6)
it.nth(1)  // => None
it.nth(1)  // => None
```
at(i) 相当かと思いきや内部でポインタを進めてからその位置の値を返すので注意
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.nth) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+it+%3D+%5B5%2C+6%2C+7%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.nth%281%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `advance_by`
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

## `?` → `fuse`
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
it.next() // => Some(0)
it.next() // => None
it.next() // => Some(2)
it.next() // => None
let mut it = it.fuse();
it.next() // => Some(4)
it.next() // => None
it.next() // => None
```
fuse を呼んだ後、最初の None が来てから None を継続する。どういうときに使うのかはわからない。
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.fuse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++struct+Foo+%7B%0A++++++++counter%3A+i32%2C%0A++++%7D%0A%0A++++%2F%2F+%E3%82%AB%E3%82%A6%E3%83%B3%E3%82%BF%E3%81%8C%E5%81%B6%E6%95%B0%E3%81%AE%E3%81%A8%E3%81%8D%E3%81%A0%E3%81%91%E3%81%9D%E3%81%AE%E5%80%A4%E3%82%92%E8%BF%94%E3%81%99%0A++++impl+Iterator+for+Foo+%7B%0A++++++++type+Item+%3D+i32%3B%0A%0A++++++++fn+next%28%26mut+self%29+-%3E+Option%3Ci32%3E+%7B%0A++++++++++++let+val+%3D+self.counter%3B%0A++++++++++++self.counter+%2B%3D+1%3B%0A++++++++++++if+val+%25+2+%3D%3D+0+%7B%0A++++++++++++++++Some%28val%29%0A++++++++++++%7D+else+%7B%0A++++++++++++++++None%0A++++++++++++%7D%0A++++++++%7D%0A++++%7D%0A%0A++++let+mut+it+%3D+Foo+%7B+counter%3A+0+%7D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++let+mut+it+%3D+it.fuse%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.next%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `size_hint`
```rust:Rust
let it = ["a", "b", "c"].iter();
it.size_hint() // => (3, Some(3))
```
イテレータの残りの長さの境界(下限と上限)を返す(？)
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.size_hint) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+it+%3D+%5B%22a%22%2C+%22b%22%2C+%22c%22%5D.iter%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+it.size_hint%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `eq ne lt le gt ge`
```rust:Rust
[1].iter().eq([1, 2].iter())  // => false
[1].iter().ne([1, 2].iter())  // => true
[1].iter().lt([1, 2].iter())  // => true
[1].iter().le([1, 2].iter())  // => true
[1].iter().gt([1, 2].iter())  // => false
[1].iter().ge([1, 2].iter())  // => false
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.ge) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.eq%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ne%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.lt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.le%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.gt%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B1%5D.iter%28%29.ge%28%5B1%2C+2%5D.iter%28%29%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `eq_by`
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

## `?` → `is_sorted`
```ruby:Ruby
v = [5, 6, 7]
v == v.sort # => true
```
```rust:Rust (nightly)
[5, 6, 7].iter().is_sorted() // => true
```
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `is_sorted_by`
```ruby:Ruby
v = [5, 6, 7]
v == v.sort { |a, b| a <=> b } # => true
```
```rust:Rust (nightly)
[5, 6, 7].iter().is_sorted_by(|a, b| a.partial_cmp(b)) // => true
```
partial_cmp は Some(Less) みたいなのを返す
[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5%2C+6%2C+7%5D.iter%28%29.is_sorted_by%28%7Ca%2C+b%7C+a.partial_cmp%28b%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `is_sorted_by_key`
```ruby:Ruby
v = [5, -6, 7]
v == v.sort_by(&:abs) # => true
```
```rust:Rust (nightly)
[5_isize, -6, 7].iter().is_sorted_by_key(|e| e.abs()) // => true
```

[DOC](https://doc.rust-lang.org/std/iter/trait.Iterator.html#method.is_sorted_by_key) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28is_sorted%29%5D%0A%0Afn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%5B5_isize%2C+-6%2C+7%5D.iter%28%29.is_sorted_by_key%28%7Ce%7C+e.abs%28%29%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)
