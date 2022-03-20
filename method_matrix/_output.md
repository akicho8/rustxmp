## Option

| Method                             | Some(5)               | None               | 動作                            |                                                                                        |
|------------------------------------|-----------------------|--------------------|---------------------------------|----------------------------------------------------------------------------------------|
| is_some()                          | true                  | false              | Some か？                       | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.is_some)            |
| unwrap()                           |                     5 | !                  | Some なら値                     | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap)             |
| unwrap_unchecked()                 |                     5 | !                  | Some なら値。unsafe が必要      | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_unchecked)   |
| expect("失敗")                     |                     5 | !                  | Some なら値。エラー文言必須     | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.expect)             |
| unwrap_or(999)                     |                     5 |                999 | Some なら値で None なら補完     | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_or)          |
| unwrap_or_else(\|\| 999)           |                     5 |                999 | 〃                              | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_or_else)     |
| unwrap_or_default()                |                     5 |                  0 | 〃                              | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.unwrap_or_default)  |
| map_or(999, \|e\| e * 2)           |                    10 |                999 | Some なら {} で None なら指定値 | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.map_or)             |
| map_or_else(\|\| 999, \|e\| e * 2) |                    10 |                999 | Some なら {} で None なら {}    | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.map_or_else)        |
| map(\|e\| e * 2)                   | Some(10)              | None               | Some なら {} を Some で返す     | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.map)                |
| and_then(\|e\| Some(e * 2))        | Some(10)              | None               | Some なら {} を Option で返す   | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.and_then)           |
| and_then::\<i32, _\>(\|\_\| None)  | None                  | None               | Some なら {} を Option で返す   | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.and_then)           |
| filter(\|e\| e % 2 == 0)           | None                  | None               | Some かつ {} が true なら残す   | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.filter)             |
| filter(\|e\| e % 2 == 1)           | Some(5)               | None               | 〃                              | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.filter)             |
| ok_or("失敗")                      | Ok(5)                 | Err("失敗")        | Result 型に変換                 | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.ok_or)              |
| ok_or_else(\|\| "失敗")            | Ok(5)                 | Err("失敗")        | 〃                              | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.ok_or_else)         |
| is_none()                          | false                 | true               | None か？                       | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.is_none)            |
| zip(Some(6))                       | Some((5, 6))          | None               | Some なら値を追加               | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.zip)                |
| and(Some(6))                       | Some(6)               | None               | Some を真として AND             | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.and)                |
| or(Some(6))                        | Some(5)               | Some(6)            | Some を真として OR              | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.or)                 |
| xor(Some(6))                       | None                  | Some(6)            | Some を真として XOR             | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.xor)                |
| insert(6)                          | 6 (元: Some(6))       | 6 (元: Some(6))    | 破壊的。None でもセット         | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.insert)             |
| replace(6)                         | Some(5) (元: Some(6)) | None (元: Some(6)) | 〃                              | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.replace)            |
| get_or_insert(6)                   | 5 (元: Some(5))       | 6 (元: Some(6))    | 破壊的。None ならセット         | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.get_or_insert)      |
| get_or_insert_with(\|\|6)          | 5 (元: Some(5))       | 6 (元: Some(6))    | 〃                              | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.get_or_insert_with) |
| take()                             | Some(5) (元: None)    | None (元: None)    | 破壊的。移動して元は None       | [DOC](https://doc.rust-lang.org/std/option/enum.Option.html#method.take)               |

## Result

| Method                                | Ok(5)    | Err("失敗")   | 動作                        |                                                                                          |
|---------------------------------------|----------|---------------|-----------------------------|------------------------------------------------------------------------------------------|
| is_ok()                               | true     | false         | Ok か？                     | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.is_ok)                |
| unwrap()                              |        5 | !             | Ok なら値                   | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap)               |
| unwrap_unchecked()                    |        5 | !             | Ok なら値。unsafe が必要    | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_unchecked)     |
| expect("大失敗")                      |        5 | !             | Ok なら値。Err 時の文言必須 | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.expect)               |
| unwrap_or(999)                        |        5 |           999 | Ok なら値で Err なら補完    | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_or)            |
| unwrap_or_else(\|\_\| 999)            |        5 |           999 | 〃                          | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_or_else)       |
| unwrap_or_default()                   |        5 |             0 | 〃                          | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_or_default)    |
| map_or(999, \|e\| e * 2)              |       10 |           999 | Ok なら {} で Err なら補完  | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.map_or)               |
| map_or_else(\|\_\| 999, \|e\| e * 2)  |       10 |           999 | 〃                          | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.map_or_else)          |
| map(\|e\| e * 2)                      | Ok(10)   | Err("失敗")   | Ok なら {} を Ok で返す     | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.map)                  |
| and_then(\|e\| Ok(e * 2))             | Ok(10)   | Err("失敗")   | Ok なら {} を Result で返す | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.and_then)             |
| and_then::\<i32, _\>(\|\_\| Err("x")) | Err("x") | Err("失敗")   | 〃                          | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.and_then)             |
| is_err()                              | false    | true          | Err か？                    | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.is_err)               |
| expect_err("xxx")                     | !        | "失敗"        | Err なら値。Ok 時の文言必須 | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.expect_err)           |
| unwrap_err_unchecked()                | !        | "失敗"        | Err なら値。unsafe が必要   | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.unwrap_err_unchecked) |
| map_err(\|e\| format!("大{}", e))     | Ok(5)    | Err("大失敗") | Err なら {} を Err で返す   | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.map_err)              |
| err()                                 | None     | Some("失敗")  | Err なら Some 化            | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.err)                  |
| and(Ok(6))                            | Ok(6)    | Err("失敗")   | Ok を真として AND           | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.and)                  |
| or::\<i32\>(Ok(6))                    | Ok(5)    | Ok(6)         | Ok を真として OR            | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.or)                   |
| ok()                                  | Some(5)  | None          | Ok なら Some 化             | [DOC](https://doc.rust-lang.org/std/result/enum.Result.html#method.ok)                   |
