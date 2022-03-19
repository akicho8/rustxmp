// use itertools::Itertools;

fn main() {
    let a: Result<i32, &str> = Ok(1);
    let b: Result<i32, &str> = Err("(message)");

    println!("{:?}", a.is_ok());
    println!("{:?}", b.is_ok());

    // | is_ok                | Ok なら true                                                                                |
    // | is_err               | Err なら true                                                                               |
    // | ok                   | Ok(n) なら Some(n) に、Err なら None にする                                                 |
    // | map                  | Ok(n) なら クロージャーに n を渡して結果をまた Ok(xxx) にする                               |
    // | map_or               | map と同じ。ただし Err なら「第1引数」を返す                                                |
    // | map_or_else          | map_or のクロージャー版                                                                     |
    // | map_err              | Err のときに呼ばれる。だいたい map と同じ。結果を Err(xxx) にする                           |
    // | expect               | エラーメッセージをつけたら Ok の中身が返る                                                  |
    // | unwrap               | Ok の中身を返す                                                                             |
    // | unwrap_or            | Ok の中身を返す。Err なら第1引数                                                            |
    // | unwrap_or_else       | Ok の中身を返す。Err なら第1引数。クロージャー版                                            |
    // | unwrap_or_default    | Ok の中身を返す。Err なら Ok の中身の型の初期値を返す                                       |
    // | expect_err           | expect の逆。エラーメッセージをつけたら Err の中身が返る。Ok なら失敗し、Err なら中身を返す |
    // | unwrap_err           | Err なら Err の中身を返す                                                                   |
    // | transpose            | Option と Result の変換                                                                     |
    // | and_then             |                                                                                             |
    // | or                   |                                                                                             |
    // | or_else              |                                                                                             |
    // | unwrap_err_unchecked |                                                                                             |
    // | copied               |                                                                                             |
    // | cloned               |                                                                                             |

}
