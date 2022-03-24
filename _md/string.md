| Ruby                   | Rust                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|------------------------|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| bytesize               | len                     | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.len) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22%F0%9F%A5%91%22.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| []                     | get                     | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22A%F0%9F%A5%91B%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.get%280..1%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.get%281..5%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.get%285..6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                    |
| chars                  | chars                   | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.chars) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%E3%81%82%F0%9F%A5%91%22.chars%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| size                   | chars.count             | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.chars) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22%F0%9F%A5%91%22.chars%28%29.count%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| to_i                   | parse::\<isize\>()      | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.parse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22567%22.parse%3A%3A%3Cisize%3E%28%29%29%3B%0A%0A++++let+v%3A+isize+%3D+%22567%22.parse%28%29.unwrap%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| lines(chomp: true)     | lines                   | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.lines) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%5Cnbar%5Cnbaz%5Cn%22.lines%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| strip                  | trim                    | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22+foo+%22.trim%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| lstrip                 | trim_start              | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_start) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22+foo+%22.trim_start%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| rstrip                 | trim_end                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_end) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22+foo+%22.trim_end%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| split                  | split_whitespace        | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_whitespace) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22+a%5Cr%5Cn+b%E3%80%80c%5Cn%22.split_whitespace%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| split(x)               | split(x)                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.split%28%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.split%28%7Ce%7C+e+%3D%3D+%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b_c%22.split%28%5B%27-%27%2C+%27_%27%5D%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                               |
| gsub!(str, "")         | remove_matches(str)     | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.remove_matches) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28string_remove_matches%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo_bar%22%29%3B%0A++++s.remove_matches%28%22bar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| concat(str)            | push_str(str)           | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.push_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.push_str%28%22bar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| concat(ch)             | push(ch)                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.push) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.push%28%27b%27%29%3B%0A++++s.push%28%27a%27%29%3B%0A++++s.push%28%27r%27%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| self * n               | repeat(n)               | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.repeat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%22.repeat%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| clear                  | clear                   | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.clear) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.clear%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| empty?                 | is_empty                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.is_empty) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22%22.is_empty%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| include?               | contains                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.contains) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcd%22.contains%28%22bc%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| chars.each.with_index  | char_indices            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.char_indices) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%E3%81%82%F0%9F%A5%91%22.char_indices%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| inspect                | escape_debug            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.escape_debug) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%F0%9F%A5%91%5Cn%22.escape_debug%28%29.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| gsub                   | replace                 | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.replace) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcabcabc%22.replace%28%22ab%22%2C+%22__%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| gsub 最初のn回だけ     | replacen                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.replacen) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcabcabc%22.replacen%28%22ab%22%2C+%22__%22%2C+2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| insert(i, str)         | insert_str(i, str)      | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.insert_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.insert_str%281%2C+%22__%22%29%3B+%2F%2F+%E6%96%87%E5%AD%97%E5%88%97%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| insert(i, ch)          | insert(i, ch)           | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.insert%281%2C+%27_%27%29%3B+%2F%2F+%E6%96%87%E5%AD%97%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| new                    | new                     | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.new) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Anew%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| bytes                  | into_bytes              | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.into_bytes) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom%28%22abc%22%29.into_bytes%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| bytes                  | as_bytes                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_bytes) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abc%22.as_bytes%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| bytes                  | as_mut_vec              | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_vec) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22abc%22%29%3B%0A++++let+v+%3D+unsafe+%7B+s.as_mut_vec%28%29+%7D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| slice!(n..)            | truncate(n)             | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.truncate) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+truncate+%E3%81%97%E3%81%9F%E9%83%A8%E5%88%86%E3%82%92%E8%BF%94%E3%81%97%E3%81%9F%E3%82%8A%E3%81%AF%E3%81%97%E3%81%AA%E3%81%84%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foobar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.truncate%283%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%0A++++%2F%2F+%E3%83%91%E3%83%8B%E3%83%83%E3%82%AF%E3%81%AB%E3%81%AA%E3%82%8B%0A++++%2F%2F+let+mut+s+%3D+String%3A%3Afrom%28%22A%F0%9F%A5%91B%22%29%3B%0A++++%2F%2F+s.truncate%282%29%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                    |
| slice!(-1)             | pop                     | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.pop) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foobar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.pop%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| slice!(i)              | remove(i)               | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foobar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.remove%283%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| select! 類似           | retain                  | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22f_o_o%22%29%3B%0A++++s.retain%28%7Ce%7C+e+%21%3D+%27_%27%29%3B+%2F%2F+%22_%22+%E3%81%A7%E3%81%AF%E6%96%87%E5%AD%97%E5%88%97%E3%82%92%E8%A1%A8%E3%81%99%E3%81%AE%E3%81%A7%E3%82%B3%E3%83%B3%E3%83%91%E3%82%A4%E3%83%AB%E3%82%A8%E3%83%A9%E3%83%BC%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                          |
| slice!(i..)            | split_off(i)            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_off) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.split_off%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| [range] = v            | replace_range(range, v) | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.replace_range) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22abcd%22%29%3B%0A++++s.replace_range%28..2%2C+%22__%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| slice                  | get_mut                 | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.get_mut) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+s+%3D+s.get_mut%280..%3D1%29%3B%0A++++let+s+%3D+s.map%28%7Ce%7C+%7B%0A++++++++%2F%2F+e+%E3%81%AF+%22fo%22%0A++++++++e.make_ascii_uppercase%28%29%3B%0A++++++++%26%2Ae%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                             |
| split(x).reverse       | rsplit(x)               | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.rsplit%28%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| split(/(?\<=x)/)       | split_inclusive(x)      | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_inclusive) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.split_inclusive%28%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| split(x)               | split_terminator(x)     | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_terminator) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c-%22.split_terminator%28%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| split(x).reverse       | rsplit_terminator(x)    | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit_terminator) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c-%22.rsplit_terminator%28%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| split(sep, n)          | splitn(n, sep)          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.splitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.splitn%282%2C+%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| split 末尾から         | rsplitn(n, sep)         | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.rsplitn%282%2C+%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| split(sep, 2)          | split_once(sep)         | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_once) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.split_once%28%22-%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| split(sep, 2) 末尾から | rsplit_once(sep)        | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit_once) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.rsplit_once%28%22-%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| scan                   | matches                 | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22_56_%22.matches%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| reverse.scan           | rmatches                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rmatches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22_56_%22.rmatches%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| start_with?            | starts_with             | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.starts_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcd%22.starts_with%28%22ab%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| end_with?              | ends_with               | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.ends_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcd%22.ends_with%28%22cd%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| ascii_only?            | is_ascii                | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.is_ascii) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%22.is_ascii%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| index                  | find                    | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.find) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22abcdabcd%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.find%28%27c%27%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.find%28%22cd%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.find%28%7Ce%7C+e+%3D%3D+%27c%27%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                           |
| rindex                 | rfind                   | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rfind) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22abcdabcd%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.rfind%28%27c%27%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.rfind%28%22cd%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.rfind%28%7Ce%7C+e+%3D%3D+%27c%27%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                       |
| strip 類似             | trim_matches            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo78%22.trim_matches%28char%3A%3Ais_numeric%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| lstrip 類似            | trim_start_matches      | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_start_matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo78%22.trim_start_matches%28char%3A%3Ais_numeric%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| rstrip 類似            | trim_end_matches        | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_end_matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo78%22.trim_end_matches%28char%3A%3Ais_numeric%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| delete_prefix          | strip_prefix            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.strip_prefix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo56%22.strip_prefix%28%2256%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| delete_suffix          | strip_suffix            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.strip_suffix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo56%22.strip_suffix%28%2256%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| casecmp(other) == 0    | eq_ignore_ascii_case    | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.eq_ignore_ascii_case) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22F%C3%B6%C3%B6%22.eq_ignore_ascii_case%28%22f%C3%B6%C3%B6%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| upcase                 | to_uppercase            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_uppercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| downcase               | to_lowercase            | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_lowercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| tr("a-z", "A-Z")       | to_ascii_uppercase      | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_ascii_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_ascii_uppercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| tr("A-Z", "a-z")       | to_ascii_lowercase      | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_ascii_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_ascii_lowercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| tr!("a-z", "A-Z")      | make_ascii_uppercase    | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.make_ascii_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22aA%C3%B6%C3%96%E2%9D%A4%22%29%3B%0A++++s.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| tr!("A-Z", "a-z")      | make_ascii_lowercase    | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.make_ascii_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22aA%C3%B6%C3%96%E2%9D%A4%22%29%3B%0A++++s.make_ascii_lowercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ?                      | match_indices           | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.match_indices) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22_56_%22.match_indices%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ?                      | rmatch_indices          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rmatch_indices) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22_56_%22.rmatch_indices%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| dump 一部unicode       | escape_default          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.escape_default) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%F0%9F%A5%91%5Cn%22.escape_default%28%29.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| dump 全部unicode       | escape_unicode          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.escape_unicode) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%F0%9F%A5%91%5Cn%22.escape_unicode%28%29.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| to_s                   | to_string               | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_string) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%22.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| to_s                   | as_str                  | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom%28%22abc%22%29.as_str%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| to_s 更新用            | as_mut_str              | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+x+%3D+String%3A%3Afrom%28%22abc%22%29%3B%0A++++let+s+%3D+x.as_mut_str%28%29%3B+%2F%2F+let+mut+%E3%81%A8%E6%9B%B8%E3%81%8B%E3%81%AA%E3%81%8F%E3%81%A6%E3%81%84%E3%81%84%E3%81%AE%E3%81%8B%E3%81%AA%EF%BC%9F%0A++++s.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%0A++++%2F%2F+%E3%81%93%E3%82%8C%E3%81%A8%E5%90%8C%E3%81%98%E3%81%A0%E3%81%91%E3%81%A9%E3%80%81%E3%81%A9%E3%81%86%E3%81%84%E3%81%86%E3%81%93%E3%81%A8%EF%BC%9F%EF%BC%9F%EF%BC%9F%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22abc%22%29%3B%0A++++s.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021) |
| ary.pack("C*")         | from_utf8(ary)          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.from_utf8) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom_utf8%28vec%21%5B240%2C+159%2C+144%2C+178%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ary.pack("C*").scrub   | from_utf8_lossy(ary)    | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.from_utf8_lossy) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B102%2C+111%2C+111%2C+129%2C+98%2C+97%2C+114%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom_utf8_lossy%28%26v%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| new(capacity: xxx)     | with_capacity(xxx)      | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.with_capacity) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Awith_capacity%2865535%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ?                      | reserve(size)           | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.reserve) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A++++s.reserve%2865535%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                |
| ?                      | shrink_to_fit           | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.shrink_to_fit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A++++s.reserve%2865535%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A++++s.shrink_to_fit%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                           |
| ?                      | into_raw_parts          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.into_raw_parts) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28vec_into_raw_parts%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+%28ptr%2C+len%2C+cap%29+%3D+s.into_raw_parts%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ptr%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+len%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+cap%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                 |
| ?                      | from_raw_parts          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.from_raw_parts) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+std%3A%3Amem%3B%0A++++let+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+mut+s+%3D+mem%3A%3AManuallyDrop%3A%3Anew%28s%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A++++let+ptr+%3D+s.as_mut_ptr%28%29%3B%0A++++let+len+%3D+s.len%28%29%3B%0A++++let+cap+%3D+s.capacity%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ptr%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+len%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+cap%29%3B%0A++++unsafe+%7B%0A++++++++let+s+%3D+String%3A%3Afrom_raw_parts%28ptr%2C+len%2C+cap%29%3B%0A++++++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A++++%7D%0A%7D%0A&version=nightly&edition=2021)                  |
| ?                      | into_boxed_str          | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.into_boxed_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+x+%3D+s.into_boxed_str%28%29%3B+%2F%2F+s+%E3%81%8B%E3%82%89+x+%E3%81%AB%E6%89%80%E6%9C%89%E6%A8%A9%E7%A7%BB%E5%8B%95%E3%81%97%E3%81%A1%E3%82%83%E3%81%A3%E3%81%A6%E3%82%8B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+x%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                     |
| ?                      | is_char_boundary        | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.is_char_boundary) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22A%F0%9F%A5%91B%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%280%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%282%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%283%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%284%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%285%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%286%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                     |
| ?                      | as_ptr                  | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_ptr) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22foo%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.as_ptr%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ?                      | as_mut_ptr              | [DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_ptr) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.as_mut_ptr%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |


## `bytesize` → `len`
```ruby:Ruby
"🥑".bytesize  # => 4
```
```rust:Rust
"🥑".len()  // => 4
```
Ruby の配列は文字単位になっているのに対して Rust はバイト単位の配列になっている
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.len) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22%F0%9F%A5%91%22.len%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `[]` → `get`
```ruby:Ruby
s = "A🥑B"
s[0] # => "A"
s[1] # => "🥑"
s[2] # => "B"
```
```rust:Rust
let s = "A🥑B";
s.get(0..1) // => Some("A")
s.get(1..5) // => Some("🥑")
s.get(5..6) // => Some("B")
```
範囲でしか指定できない。Rustではマルチバイト文字を含む文字列の操作が難しそうだ。
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.get) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22A%F0%9F%A5%91B%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.get%280..1%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.get%281..5%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.get%285..6%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `chars` → `chars`
```ruby:Ruby
"Aあ🥑".chars       # => ["A", "あ", "🥑"]
"Aあ🥑".codepoints  # => [65, 12354, 129361]
```
```rust:Rust
"Aあ🥑".chars().collect::<Vec<_>>() // => ['A', 'あ', '🥑']
```
文字単位で扱う場合はさっさとこれで配列化してから操作した方がよさそう
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.chars) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%E3%81%82%F0%9F%A5%91%22.chars%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `size` → `chars.count`
```ruby:Ruby
"🥑".size  # => 1
```
```rust:Rust
"🥑".chars().count()  // => 1
```
文字数
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.chars) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22%F0%9F%A5%91%22.chars%28%29.count%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `to_i` → `parse::<isize>()`
```ruby:Ruby
"567".to_i # => 567
```
```rust:Rust
"567".parse::<isize>() // => Ok(567)

let v: isize = "567".parse().unwrap();
v // => 567
```
`::<xxx>` の部分をターボフィッシュというらしい。戻値を受け取る変数に型指定があれば省略できるようだけど parse の方に指定した方がわかりやすい。
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.parse) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22567%22.parse%3A%3A%3Cisize%3E%28%29%29%3B%0A%0A++++let+v%3A+isize+%3D+%22567%22.parse%28%29.unwrap%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `lines(chomp: true)` → `lines`
```ruby:Ruby
"foo\nbar\nbaz\n".lines(chomp: true) # => ["foo", "bar", "baz"]
```
```rust:Rust
"foo\nbar\nbaz\n".lines().collect::<Vec<_>>() // => ["foo", "bar", "baz"]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.lines) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%5Cnbar%5Cnbaz%5Cn%22.lines%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `strip` → `trim`
```ruby:Ruby
" foo ".strip # => "foo"
```
```rust:Rust
" foo ".trim() // => "foo"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22+foo+%22.trim%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `lstrip` → `trim_start`
```ruby:Ruby
" foo ".lstrip # => "foo "
```
```rust:Rust
" foo ".trim_start() // => "foo "
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_start) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22+foo+%22.trim_start%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `rstrip` → `trim_end`
```ruby:Ruby
" foo ".rstrip # => " foo"
```
```rust:Rust
" foo ".trim_end() // => " foo"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_end) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22+foo+%22.trim_end%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split` → `split_whitespace`
```ruby:Ruby
" a\r\n b　c\n".gsub(/[[:space:]]+/, " ").split # => ["a", "b", "c"]
```
```rust:Rust
" a\r\n b　c\n".split_whitespace().collect::<Vec<_>>() // => ["a", "b", "c"]
```
全角スペースに対応している。使いやすそう。
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_whitespace) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22+a%5Cr%5Cn+b%E3%80%80c%5Cn%22.split_whitespace%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(x)` → `split(x)`
```ruby:Ruby
"a-b-c".split("-")    # => ["a", "b", "c"]
"a-b_c".split(/[-_]/) # => ["a", "b", "c"]
```
```rust:Rust
"a-b-c".split('-').collect::<Vec<_>>()          // => ["a", "b", "c"]
"a-b-c".split(|e| e == '-').collect::<Vec<_>>() // => ["a", "b", "c"]
"a-b_c".split(['-', '_']).collect::<Vec<_>>()   // => ["a", "b", "c"]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.split%28%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.split%28%7Ce%7C+e+%3D%3D+%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b_c%22.split%28%5B%27-%27%2C+%27_%27%5D%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `gsub!(str, "")` → `remove_matches(str)`
```ruby:Ruby
s = "foo_bar"
s.gsub!("bar", "")
s # => "foo_"
```
```rust:Rust (nightly)
let mut s = String::from("foo_bar");
s.remove_matches("bar");
s // => "foo_"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.remove_matches) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28string_remove_matches%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo_bar%22%29%3B%0A++++s.remove_matches%28%22bar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `concat(str)` → `push_str(str)`
```ruby:Ruby
s = "foo"
s.concat("bar")
s  # => "foobar"
```
```rust:Rust
let mut s = String::from("foo");
s.push_str("bar");
s  // => "foobar"
```
メソッド名がイケてない
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.push_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.push_str%28%22bar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `concat(ch)` → `push(ch)`
```ruby:Ruby
s = "foo"
s.concat('b')
s.concat('a')
s.concat('r')
s  # => "foobar"
```
```rust:Rust
let mut s = String::from("foo");
s.push('b');
s.push('a');
s.push('r');
s  // => "foobar"
```
こんな滅多に使わなそうなのは push_char にして push_str を push にしてほしかった
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.push) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.push%28%27b%27%29%3B%0A++++s.push%28%27a%27%29%3B%0A++++s.push%28%27r%27%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `self * n` → `repeat(n)`
```ruby:Ruby
"foo" * 2 # => "foofoo"
```
```rust:Rust
"foo".repeat(2) // => "foofoo"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.repeat) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%22.repeat%282%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `clear` → `clear`
```ruby:Ruby
s = "foo"
s.clear
s  # => ""
```
```rust:Rust
let mut s = String::from("foo");
s.clear();
s  // => ""
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.clear) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.clear%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `empty?` → `is_empty`
```ruby:Ruby
"".empty?  # => true
```
```rust:Rust
"".is_empty()  // => true
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.is_empty) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22%22.is_empty%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `include?` → `contains`
```ruby:Ruby
"abcd".include?("bc") # => true
```
```rust:Rust
"abcd".contains("bc") // => true
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.contains) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcd%22.contains%28%22bc%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `chars.each.with_index` → `char_indices`
```ruby:Ruby
"Aあ🥑".chars.each.with_index.entries # => [["A", 0], ["あ", 1], ["🥑", 2]]
```
```rust:Rust
"Aあ🥑".char_indices().collect::<Vec<_>>() // => [(0, 'A'), (1, 'あ'), (4, '🥑')]
```
Rust のほうの位置は連番ではない。バイト配列での位置になっている。
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.char_indices) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%E3%81%82%F0%9F%A5%91%22.char_indices%28%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `inspect` → `escape_debug`
```ruby:Ruby
"A🥑\n".inspect  # => "\"A🥑\\n\""
```
```rust:Rust
"A🥑\n".escape_debug().to_string()    // => "A🥑\\n"
```
改行がエスケープされ `\n` 表記になる
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.escape_debug) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%F0%9F%A5%91%5Cn%22.escape_debug%28%29.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `gsub` → `replace`
```ruby:Ruby
"abcabcabc".gsub("ab", "__") # => "__c__c__c"
```
```rust:Rust
"abcabcabc".replace("ab", "__") // => "__c__c__c"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.replace) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcabcabc%22.replace%28%22ab%22%2C+%22__%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `gsub 最初のn回だけ` → `replacen`
```ruby:Ruby
# もっとましな方法ありそう
n = 2
c = 0
s = "abcabcabc".gsub("ab") do |m|
  c += 1
  if c <= n
    "__"
  else
    m
  end
end
s # => "__c__cabc"
```
```rust:Rust
"abcabcabc".replacen("ab", "__", 2) // => "__c__cabc"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.replacen) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcabcabc%22.replacen%28%22ab%22%2C+%22__%22%2C+2%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `insert(i, str)` → `insert_str(i, str)`
```ruby:Ruby
s = "foo"
s.insert(1, "__")
s # => "f__oo"
```
```rust:Rust
let mut s = String::from("foo");
s.insert_str(1, "__"); // 文字列
s // => "f__oo"
```
メソッド名がイケてない
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.insert_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.insert_str%281%2C+%22__%22%29%3B+%2F%2F+%E6%96%87%E5%AD%97%E5%88%97%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `insert(i, ch)` → `insert(i, ch)`
```ruby:Ruby
s = "foo"
s.insert(1, "_")
s # => "f_oo"
```
```rust:Rust
let mut s = String::from("foo");
s.insert(1, '_'); // 文字
s // => "f_oo"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.insert) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++s.insert%281%2C+%27_%27%29%3B+%2F%2F+%E6%96%87%E5%AD%97%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `new` → `new`
```ruby:Ruby
s = String.new
s  # => ""
```
```rust:Rust
let s = String::new();
s  // => ""
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.new) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Anew%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `bytes` → `into_bytes`
```ruby:Ruby
"abc".bytes # => [97, 98, 99]
```
```rust:Rust
String::from("abc").into_bytes() // => [97, 98, 99]
```
所有権が移動するやつ？
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.into_bytes) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom%28%22abc%22%29.into_bytes%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `bytes` → `as_bytes`
```ruby:Ruby
"abc".bytes # => [97, 98, 99]
```
```rust:Rust
"abc".as_bytes() // => [97, 98, 99]
```
型変換？
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_bytes) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abc%22.as_bytes%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `bytes` → `as_mut_vec`
```ruby:Ruby
"abc".bytes # => [97, 98, 99]
```
```rust:Rust
let mut s = String::from("abc");
let v = unsafe { s.as_mut_vec() };
v // => [97, 98, 99]
```
同じようなのがいくつもあるな
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_vec) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22abc%22%29%3B%0A++++let+v+%3D+unsafe+%7B+s.as_mut_vec%28%29+%7D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+v%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `slice!(n..)` → `truncate(n)`
```ruby:Ruby
s = "foobar"
s.slice!(3..) # => "bar"
s             # => "foo"

s = "A🥑B"
s.slice!(2..) # => "B"
s             # => "A🥑"
```
```rust:Rust
// truncate した部分を返したりはしない
let mut s = String::from("foobar");
s.truncate(3) // => ()
s             // => "foo"

// パニックになる
// let mut s = String::from("A🥑B");
// s.truncate(2)
```
マルチバイト文字が含まれていたら文字の境界線を慎重に指定しないとパニックになる
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.truncate) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++%2F%2F+truncate+%E3%81%97%E3%81%9F%E9%83%A8%E5%88%86%E3%82%92%E8%BF%94%E3%81%97%E3%81%9F%E3%82%8A%E3%81%AF%E3%81%97%E3%81%AA%E3%81%84%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foobar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.truncate%283%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%0A++++%2F%2F+%E3%83%91%E3%83%8B%E3%83%83%E3%82%AF%E3%81%AB%E3%81%AA%E3%82%8B%0A++++%2F%2F+let+mut+s+%3D+String%3A%3Afrom%28%22A%F0%9F%A5%91B%22%29%3B%0A++++%2F%2F+s.truncate%282%29%0A%7D%0A&version=nightly&edition=2021)

## `slice!(-1)` → `pop`
```ruby:Ruby
s = "foobar"
s.slice!(-1) # => "r"
s            # => "fooba"
```
```rust:Rust
let mut s = String::from("foobar");
s.pop() // => Some('r')
s       // => "fooba"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.pop) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foobar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.pop%28%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `slice!(i)` → `remove(i)`
```ruby:Ruby
s = "foobar"
s.slice!(3) # => "b"
s           # => "fooar"
```
```rust:Rust
let mut s = String::from("foobar");
s.remove(3) // => 'b'
s           // => "fooar"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.remove) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foobar%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.remove%283%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `select! 類似` → `retain`
```ruby:Ruby
class String
  def retain(&block)
    replace(each_char.select(&block).join)
  end
end

s = "f_o_o"
s.retain { |e| e != "_" }
s # => "foo"

s = "f_o_o"
s.delete!("_")
s # => "foo"
```
```rust:Rust
let mut s = String::from("f_o_o");
s.retain(|e| e != '_'); // "_" では文字列を表すのでコンパイルエラー
s // => "foo"
```
この例では `remove_matches("_")` のほうが良い
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.retain) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22f_o_o%22%29%3B%0A++++s.retain%28%7Ce%7C+e+%21%3D+%27_%27%29%3B+%2F%2F+%22_%22+%E3%81%A7%E3%81%AF%E6%96%87%E5%AD%97%E5%88%97%E3%82%92%E8%A1%A8%E3%81%99%E3%81%AE%E3%81%A7%E3%82%B3%E3%83%B3%E3%83%91%E3%82%A4%E3%83%AB%E3%82%A8%E3%83%A9%E3%83%BC%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `slice!(i..)` → `split_off(i)`
```ruby:Ruby
s = "foo"
s.slice!(1..)  # => "oo"
s              # => "f"

s = "foo"
s.byteslice(1...)            # => "oo"
s.replace(s.byteslice(...1))
s                            # => "f"
```
```rust:Rust
let mut s = String::from("foo");
s.split_off(1) // => "oo"
s              // => "f"
```
正確には byteslice の破壊版に近い
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_off) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.split_off%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `[range] = v` → `replace_range(range, v)`
```ruby:Ruby
s = "abcd"
s[...2] = "__"
s  # => "__cd"
```
```rust:Rust
let mut s = String::from("abcd");
s.replace_range(..2, "__");
s  // => "__cd"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.replace_range) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22abcd%22%29%3B%0A++++s.replace_range%28..2%2C+%22__%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `slice` → `get_mut`
```ruby:Ruby
"foo".slice(0..1).upcase # => "FO"
```
```rust:Rust
let mut s = String::from("foo");
let s = s.get_mut(0..=1);
let s = s.map(|e| {         // e は "fo"
    e.make_ascii_uppercase();
    &*e
});
s // => Some("FO")
```
なんだこれ
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.get_mut) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+s+%3D+s.get_mut%280..%3D1%29%3B%0A++++let+s+%3D+s.map%28%7Ce%7C+%7B%0A++++++++%2F%2F+e+%E3%81%AF+%22fo%22%0A++++++++e.make_ascii_uppercase%28%29%3B%0A++++++++%26%2Ae%0A++++%7D%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(x).reverse` → `rsplit(x)`
```ruby:Ruby
"a-b-c".split("-").reverse # => ["c", "b", "a"]
```
```rust:Rust
"a-b-c".rsplit('-').collect::<Vec<_>>()  // => ["c", "b", "a"]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.rsplit%28%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(/(?<=x)/)` → `split_inclusive(x)`
```ruby:Ruby
"a-b-c".split(/(?<=-)/)  # => ["a-", "b-", "c"]
```
```rust:Rust
"a-b-c".split_inclusive('-').collect::<Vec<_>>() // => ["a-", "b-", "c"]
```
セパレータで分けて前の要素に残す
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_inclusive) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c%22.split_inclusive%28%27-%27%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(x)` → `split_terminator(x)`
```ruby:Ruby
"a-b-c-".split("-") # => ["a", "b", "c"]
```
```rust:Rust
"a-b-c-".split_terminator("-").collect::<Vec<_>>() // => ["a", "b", "c"]
```
セパレータではなく句点のように終端に特定の文字がある構造を分ける
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_terminator) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c-%22.split_terminator%28%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(x).reverse` → `rsplit_terminator(x)`
```ruby:Ruby
"a-b-c-".split("-").reverse # => ["c", "b", "a"]
```
```rust:Rust
"a-b-c-".rsplit_terminator("-").collect::<Vec<_>>() // => ["c", "b", "a"]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit_terminator) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22a-b-c-%22.rsplit_terminator%28%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(sep, n)` → `splitn(n, sep)`
```ruby:Ruby
"foo-bar-baz".split("-", 2) # => ["foo", "bar-baz"]
```
```rust:Rust
"foo-bar-baz".splitn(2, "-").collect::<Vec<_>>() // => ["foo", "bar-baz"]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.splitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.splitn%282%2C+%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split 末尾から` → `rsplitn(n, sep)`
```ruby:Ruby
"foo-bar-baz".reverse.split("-", 2).collect(&:reverse) # => ["baz", "foo-bar"]
```
```rust:Rust
"foo-bar-baz".rsplitn(2, "-").collect::<Vec<_>>() // => ["baz", "foo-bar"]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplitn) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.rsplitn%282%2C+%22-%22%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(sep, 2)` → `split_once(sep)`
```ruby:Ruby
"foo-bar-baz".split("-", 2) # => ["foo", "bar-baz"]
```
```rust:Rust
"foo-bar-baz".split_once("-") // => Some(("foo", "bar-baz"))
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.split_once) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.split_once%28%22-%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `split(sep, 2) 末尾から` → `rsplit_once(sep)`
```ruby:Ruby
s = "foo-bar-baz".reverse.split("-", 2)
s.collect(&:reverse).reverse # => ["foo-bar", "baz"]
```
```rust:Rust
"foo-bar-baz".rsplit_once("-") // => Some(("foo-bar", "baz"))
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit_once) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo-bar-baz%22.rsplit_once%28%22-%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `scan` → `matches`
```ruby:Ruby
"_56_".scan(/\d/) # => ["5", "6"]
```
```rust:Rust
"_56_".matches(char::is_numeric).collect::<Vec<_>>() // => ["5", "6"]
```
予想に反して1文字づつ返ってくる
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22_56_%22.matches%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `reverse.scan` → `rmatches`
```ruby:Ruby
"_56_".reverse.scan(/\d/) # => ["6", "5"]
```
```rust:Rust
"_56_".rmatches(char::is_numeric).collect::<Vec<_>>() // => ["6", "5"]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rmatches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22_56_%22.rmatches%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `start_with?` → `starts_with`
```ruby:Ruby
"abcd".start_with?("ab") # => true
```
```rust:Rust
"abcd".starts_with("ab") // => true
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.starts_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcd%22.starts_with%28%22ab%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `end_with?` → `ends_with`
```ruby:Ruby
"abcd".end_with?("cd") # => true
```
```rust:Rust
"abcd".ends_with("cd") // => true
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.ends_with) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22abcd%22.ends_with%28%22cd%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `ascii_only?` → `is_ascii`
```ruby:Ruby
"foo".ascii_only? # => true
```
```rust:Rust
"foo".is_ascii() // => true
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.is_ascii) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%22.is_ascii%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `index` → `find`
```ruby:Ruby
s = "abcdabcd"
s.index("c")                   # => 2
s.index("cd")                  # => 2
s.chars.index { |e| e == 'c' } # => 2
```
```rust:Rust
let s = "abcdabcd";
s.find('c')           // => Some(2)
s.find("cd")          // => Some(2)
s.find(|e| e == 'c')  // => Some(2)
```
xxx, xxx_by, xxx_by_key シリーズのように引数の型が変わるたびに異なるメソッドになるのが Rust のスタイルかと思いきや、このメソッドはいろんな引数に対応していてありがたい
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.find) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22abcdabcd%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.find%28%27c%27%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.find%28%22cd%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.find%28%7Ce%7C+e+%3D%3D+%27c%27%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `rindex` → `rfind`
```ruby:Ruby
s = "abcdabcd"
s.rindex("c")                   # => 6
s.rindex("cd")                  # => 6
s.chars.rindex { |e| e == 'c' } # => 6
```
```rust:Rust
let s = "abcdabcd";
s.rfind('c')           // => Some(6)
s.rfind("cd")          // => Some(6)
s.rfind(|e| e == 'c')  // => Some(6)
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rfind) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22abcdabcd%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.rfind%28%27c%27%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.rfind%28%22cd%22%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.rfind%28%7Ce%7C+e+%3D%3D+%27c%27%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `strip 類似` → `trim_matches`
```ruby:Ruby
"56foo78".sub(/\A\d+(.*?)\d*\z/, '\1') # => "foo"
```
```rust:Rust
"56foo78".trim_matches(char::is_numeric) // => "foo"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo78%22.trim_matches%28char%3A%3Ais_numeric%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `lstrip 類似` → `trim_start_matches`
```ruby:Ruby
"56foo78".sub(/\A\d+/, "") # => "foo78"
```
```rust:Rust
"56foo78".trim_start_matches(char::is_numeric) // => "foo78"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_start_matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo78%22.trim_start_matches%28char%3A%3Ais_numeric%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `rstrip 類似` → `trim_end_matches`
```ruby:Ruby
"56foo78".sub(/\d+\z/, "") # => "56foo"
```
```rust:Rust
"56foo78".trim_end_matches(char::is_numeric) // => "56foo"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.trim_end_matches) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo78%22.trim_end_matches%28char%3A%3Ais_numeric%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `delete_prefix` → `strip_prefix`
```ruby:Ruby
"56foo56".delete_prefix("56") # => "foo56"
```
```rust:Rust
"56foo56".strip_prefix("56") // => Some("foo56")
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.strip_prefix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo56%22.strip_prefix%28%2256%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `delete_suffix` → `strip_suffix`
```ruby:Ruby
"56foo56".delete_suffix("56") # => "56foo"
```
```rust:Rust
"56foo56".strip_suffix("56") // => Some("56foo")
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.strip_suffix) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%2256foo56%22.strip_suffix%28%2256%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `casecmp(other) == 0` → `eq_ignore_ascii_case`
```ruby:Ruby
"Föö".casecmp("föö") == 0 # => true
```
```rust:Rust
"Föö".eq_ignore_ascii_case("föö") // => true
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.eq_ignore_ascii_case) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22F%C3%B6%C3%B6%22.eq_ignore_ascii_case%28%22f%C3%B6%C3%B6%22%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `upcase` → `to_uppercase`
```ruby:Ruby
"aAöÖ❤".upcase # => "AAÖÖ❤"
```
```rust:Rust
"aAöÖ❤".to_uppercase() // => "AAÖÖ❤"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_uppercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `downcase` → `to_lowercase`
```ruby:Ruby
"aAöÖ❤".downcase # => "aaöö❤"
```
```rust:Rust
"aAöÖ❤".to_lowercase() // => "aaöö❤"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_lowercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `tr("a-z", "A-Z")` → `to_ascii_uppercase`
```ruby:Ruby
"aAöÖ❤".tr("a-z", "A-Z") # => "AAöÖ❤"
```
```rust:Rust
"aAöÖ❤".to_ascii_uppercase() // => "AAöÖ❤"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_ascii_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_ascii_uppercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `tr("A-Z", "a-z")` → `to_ascii_lowercase`
```ruby:Ruby
"aAöÖ❤".tr("A-Z", "a-z") # => "aaöÖ❤"
```
```rust:Rust
"aAöÖ❤".to_ascii_lowercase() // => "aaöÖ❤"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_ascii_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22aA%C3%B6%C3%96%E2%9D%A4%22.to_ascii_lowercase%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `tr!("a-z", "A-Z")` → `make_ascii_uppercase`
```ruby:Ruby
s = "aAöÖ❤"
s.tr!("a-z", "A-Z")
s # => "AAöÖ❤"
```
```rust:Rust
let mut s = String::from("aAöÖ❤");
s.make_ascii_uppercase();
s // => "AAöÖ❤"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.make_ascii_uppercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22aA%C3%B6%C3%96%E2%9D%A4%22%29%3B%0A++++s.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `tr!("A-Z", "a-z")` → `make_ascii_lowercase`
```ruby:Ruby
s = "aAöÖ❤"
s.tr!("A-Z", "a-z")
s # => "aaöÖ❤"
```
```rust:Rust
let mut s = String::from("aAöÖ❤");
s.make_ascii_lowercase();
s // => "aaöÖ❤"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.make_ascii_lowercase) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22aA%C3%B6%C3%96%E2%9D%A4%22%29%3B%0A++++s.make_ascii_lowercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `match_indices`
```ruby:Ruby
"_56_".chars.filter_map.with_index { |e, i| [i, e] if e.match?(/\d/) } # => [[1, "5"], [2, "6"]]
```
```rust:Rust
"_56_".match_indices(char::is_numeric).collect::<Vec<_>>() // => [(1, "5"), (2, "6")]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.match_indices) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22_56_%22.match_indices%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `rmatch_indices`
```ruby:Ruby
"_56_".chars.filter_map.with_index { |e, i| [i, e] if e.match?(/\d/) }.reverse # => [[2, "6"], [1, "5"]]
```
```rust:Rust
"_56_".rmatch_indices(char::is_numeric).collect::<Vec<_>>() // => [(2, "6"), (1, "5")]
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.rmatch_indices) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%0A++++++++%22%7B%3A%3F%7D%22%2C%0A++++++++%22_56_%22.rmatch_indices%28char%3A%3Ais_numeric%29.collect%3A%3A%3CVec%3C_%3E%3E%28%29%0A++++%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `dump 一部unicode` → `escape_default`
```ruby:Ruby
"A🥑\n".dump  # => "\"A\\u{1F951}\\n\""
```
```rust:Rust
"A🥑\n".escape_default().to_string()    // => "A\\u{1f951}\\n"
```
絵文字はユニコードの数字表記になる。ちょうど良い。
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.escape_default) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%F0%9F%A5%91%5Cn%22.escape_default%28%29.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `dump 全部unicode` → `escape_unicode`
```ruby:Ruby
"A🥑\n".dump  # => "\"A\\u{1F951}\\n\""
```
```rust:Rust
"A🥑\n".escape_unicode().to_string()    // => "\\u{41}\\u{1f951}\\u{a}"
```
全部ユニコードの数字表記で、改行も a になって余計わからん
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.escape_unicode) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22A%F0%9F%A5%91%5Cn%22.escape_unicode%28%29.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `to_s` → `to_string`
```rust:Rust
"foo".to_string() // => "foo"
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.to_string) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+%22foo%22.to_string%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `to_s` → `as_str`
```ruby:Ruby
"abc".to_s # => "abc"
```
```rust:Rust
String::from("abc").as_str() // => "abc"
```
String型にしか生えてない。to_string と何が違う？
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom%28%22abc%22%29.as_str%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `to_s 更新用` → `as_mut_str`
```ruby:Ruby
"abc".to_s # => "abc"
```
```rust:Rust
let mut x = String::from("abc");
let s = x.as_mut_str(); // let mut と書かなくていいのかな？
s.make_ascii_uppercase();
s // => "ABC"

// これと同じだけど、どういうこと？？？
let mut s = String::from("abc");
s.make_ascii_uppercase();
s // => "ABC"
```
なんかよくわからないけどそのうちわかるだろう
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+x+%3D+String%3A%3Afrom%28%22abc%22%29%3B%0A++++let+s+%3D+x.as_mut_str%28%29%3B+%2F%2F+let+mut+%E3%81%A8%E6%9B%B8%E3%81%8B%E3%81%AA%E3%81%8F%E3%81%A6%E3%81%84%E3%81%84%E3%81%AE%E3%81%8B%E3%81%AA%EF%BC%9F%0A++++s.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%0A++++%2F%2F+%E3%81%93%E3%82%8C%E3%81%A8%E5%90%8C%E3%81%98%E3%81%A0%E3%81%91%E3%81%A9%E3%80%81%E3%81%A9%E3%81%86%E3%81%84%E3%81%86%E3%81%93%E3%81%A8%EF%BC%9F%EF%BC%9F%EF%BC%9F%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22abc%22%29%3B%0A++++s.make_ascii_uppercase%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `ary.pack("C*")` → `from_utf8(ary)`
```ruby:Ruby
puts [240, 159, 144, 178].pack("C*")
# >> 🐲
```
```rust:Rust
String::from_utf8(vec![240, 159, 144, 178]) // => Ok("🐲")
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.from_utf8) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom_utf8%28vec%21%5B240%2C+159%2C+144%2C+178%5D%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `ary.pack("C*").scrub` → `from_utf8_lossy(ary)`
```rust:Rust
let v = vec![102, 111, 111, 129, 98, 97, 114];
String::from_utf8_lossy(&v) // => "foo�bar"
```
129 は無効な文字なので � になる
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.from_utf8_lossy) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+v+%3D+vec%21%5B102%2C+111%2C+111%2C+129%2C+98%2C+97%2C+114%5D%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+String%3A%3Afrom_utf8_lossy%28%26v%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `new(capacity: xxx)` → `with_capacity(xxx)`
```ruby:Ruby
s = String.new(capacity: 65535)
s  # => ""
# capacity 見れんの？
```
```rust:Rust
let s = String::with_capacity(65535);
s            // => ""
s.capacity() // => 65535
```
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.with_capacity) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Awith_capacity%2865535%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `reserve(size)`
```rust:Rust
let mut s = String::from("foo");
s.capacity() // => 3
s.reserve(65535);
s.capacity() // => 65538
```
あとから容量を確保する。キリの良い単位で確保するので指定よりも多く確保することもある。
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.reserve) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A++++s.reserve%2865535%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `shrink_to_fit`
```rust:Rust
let mut s = String::from("foo");
s.capacity() // => 3
s.reserve(65535);
s.capacity() // => 65538
s.shrink_to_fit();
s.capacity() // => 3
```
reserve の逆でメモリを切り詰める
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.shrink_to_fit) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A++++s.reserve%2865535%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A++++s.shrink_to_fit%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.capacity%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `into_raw_parts`
```rust:Rust (nightly)
let s = String::from("foo");
let (ptr, len, cap) = s.into_raw_parts();
ptr // => 0x7ff14ec05eb0
len // => 3
cap // => 3
```
文字列をさらにラップしているらしい
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.into_raw_parts) [実行](https://play.rust-lang.org/?code=%23%21%5Bfeature%28vec_into_raw_parts%29%5D%0A%0Afn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+%28ptr%2C+len%2C+cap%29+%3D+s.into_raw_parts%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ptr%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+len%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+cap%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `from_raw_parts`
```rust:Rust
use std::mem;
let s = String::from("foo");
let mut s = mem::ManuallyDrop::new(s);
s // => ManuallyDrop { value: "foo" }
let ptr = s.as_mut_ptr();
let len = s.len();
let cap = s.capacity();
ptr // => 0x7fb064405eb0
len // => 3
cap // => 3
unsafe {
    let s = String::from_raw_parts(ptr, len, cap);
    s // => "foo"
}
```
自力で文字列作成用？
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.from_raw_parts) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++use+std%3A%3Amem%3B%0A++++let+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+mut+s+%3D+mem%3A%3AManuallyDrop%3A%3Anew%28s%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A++++let+ptr+%3D+s.as_mut_ptr%28%29%3B%0A++++let+len+%3D+s.len%28%29%3B%0A++++let+cap+%3D+s.capacity%28%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+ptr%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+len%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+cap%29%3B%0A++++unsafe+%7B%0A++++++++let+s+%3D+String%3A%3Afrom_raw_parts%28ptr%2C+len%2C+cap%29%3B%0A++++++++println%21%28%22%7B%3A%3F%7D%22%2C+s%29%3B%0A++++%7D%0A%7D%0A&version=nightly&edition=2021)

## `?` → `into_boxed_str`
```rust:Rust
let s = String::from("foo");
let x = s.into_boxed_str(); // s から x に所有権移動しちゃってる
x // => "foo"
```
どゆこと？
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.into_boxed_str) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++let+x+%3D+s.into_boxed_str%28%29%3B+%2F%2F+s+%E3%81%8B%E3%82%89+x+%E3%81%AB%E6%89%80%E6%9C%89%E6%A8%A9%E7%A7%BB%E5%8B%95%E3%81%97%E3%81%A1%E3%82%83%E3%81%A3%E3%81%A6%E3%82%8B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+x%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `is_char_boundary`
```rust:Rust
let s = "A🥑B";
s.is_char_boundary(0)  // => true
s.is_char_boundary(1)  // => true
s.is_char_boundary(2)  // => false
s.is_char_boundary(3)  // => false
s.is_char_boundary(4)  // => false
s.is_char_boundary(5)  // => true
s.is_char_boundary(6)  // => true
```
指定位置のバイトがUTF-8コードポイントシーケンスの最初のバイトまたは文字列の終わりなら true らしいがピンとこない
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.is_char_boundary) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22A%F0%9F%A5%91B%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%280%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%281%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%282%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%283%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%284%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%285%29%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.is_char_boundary%286%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `as_ptr`
```rust:Rust
let s = "foo";
s.as_ptr() // => 0x10dab04a0
```
ptr はC言語で言うところポインタなのかな
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_ptr) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+s+%3D+%22foo%22%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.as_ptr%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)

## `?` → `as_mut_ptr`
```rust:Rust
let mut s = String::from("foo");
s.as_mut_ptr() // => 0x7fb6ded05dd0
```
文字を更新するとき用
[DOC](https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_ptr) [実行](https://play.rust-lang.org/?code=fn+main%28%29+%7B%0A++++let+mut+s+%3D+String%3A%3Afrom%28%22foo%22%29%3B%0A++++println%21%28%22%7B%3A%3F%7D%22%2C+s.as_mut_ptr%28%29%29%3B%0A%7D%0A&version=nightly&edition=2021)
