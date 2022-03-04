fn main() {
    // // ▼is_some: some?
    // println!("{:?}", Some(5).is_some());
    //
    // // ▼is_none: none?
    // println!("{:?}", (None as Option<isize>).is_none());
    //
    // // ▼as_ref: 所有権の移動を防ぐ
    // let text: Option<String> = Some("Hello, world!".to_string());
    // let length: Option<usize> = text.as_ref().map(|s| s.len()); // 所有権を map に渡さない
    // println!("{:?}", length);
    // println!("still can print text: {:?}", text); // as_ref を外すとここでエラーになる
    //
    // // ▼as_mut: 中身を変更できる
    // let mut v = Some(5);
    // match v.as_mut() {
    //     Some(v) => *v = 6,
    //     None => {},
    // }
    // println!("{:?}", v);
    //
    // // ▼as_pin_mut: ?
    //
    // // ▼expect: エラーメッセージを書いた引き換えに中身を出してくれる
    // println!("{:?}", Some(5).expect("error"));
    //
    // // ▼unwrap: 中身を出す。なければエラー
    // println!("{:?}", Some(5).unwrap());
    //
    // // ▼unwrap_or: 中身を出す。なければ指定した値
    // println!("{:?}", None.unwrap_or(5));
    //
    // // ▼unwrap_or_else: 中身を出す。なければ指定したクロージャーの結果
    // println!("{:?}", None.unwrap_or_else(||5));
    //
    // // ▼unwrap_or_default: 中身を出す。なければ指定したクロージャーの結果
    // println!("{:?}", (None as Option<isize>).unwrap_or_default());

    // // ▼unwrap_unchecked: Noneなら実行されなくなる？
    // println!("{:?}", unsafe { Some(5).unwrap_unchecked() }); // => 5
    // println!("{:?}", unsafe { (None as Option<isize>).unwrap_unchecked() }); // 意味がわからないが、実行されない。exit している？

    // // ▼map: yield_self
    // println!("{:?}", Some("foo").map(|e| e.len()));                         // => Some(3)
    // println!("{:?}", (None as Option<&str>).map_or(9, |e| e.len()));        // => 9
    // println!("{:?}", (None as Option<&str>).map_or_else(||9, |e| e.len())); // => 9
    //
    // // ▼ok_or: Result 型に変換
    // // ▼ok_or_else: Result 型に変換(クロージャ版)
    // println!("{:?}", Some(1).ok_or("x"));                        // => Ok(1)
    // println!("{:?}", (None as Option<isize>).ok_or("x"));        // => Err("x")
    // println!("{:?}", (None as Option<isize>).ok_or_else(||"x")); // => Err("x")
    //
    // // ▼as_deref: ?
    // println!("{:?}", Some("1".to_owned()).as_deref());   // => Some("1")
    // println!("{:?}", (None as Option<&str>).as_deref()); // => None
    //
    // // ▼as_deref_mut: ?
    //
    // // ▼iter:
    // // ▼iter_mut:
    //
    // // ▼and: option && option
    // let none: Option<isize> = None;
    // println!("{:?}", Some(1).and(none));    // => None
    // println!("{:?}", none.and(Some(1)));    // => None
    // println!("{:?}", Some(1).and(Some(2))); // => Some(2)
    //
    // // ▼or: option || option
    // let none: Option<isize> = None;
    // println!("{:?}", Some(1).or(none));    // => Some(1)
    // println!("{:?}", none.or(Some(1)));    // => Some(1)
    // println!("{:?}", Some(1).or(Some(2))); // => Some(1)
    // println!("{:?}", none.or(none));       // => None

    // ▼or_else: Some(1) || { Some(2) }.call
    let none: Option<isize> = None;
    println!("{:?}", Some(1).or_else(||Some(2)));    // => Some(1)
    println!("{:?}", none.or_else(||Some(2)));       // => Some(2)

    // ▼xor: Some ^ Some
    let none: Option<isize> = None;
    println!("{:?}", Some(1).xor(Some(2)));    // => None
    println!("{:?}", Some(1).xor(none));       // => Some(1)

    // // ▼and_then: Some なら yield_self
    // println!("{:?}", Some(5).and_then(|e| Some(e * 2)));   // => Some(10)
    //
    // // ▼filer: Some なら yield_self して結果が true なら元の Some を返す
    // println!("{:?}", Some(6).filter(|e| e % 2 == 0));   // => Some(6)
    // println!("{:?}", None.filter(|e| e % 2 == 0));      // => None
}
