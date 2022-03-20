fn main() {
    // ▼is_some: some?
    println!("{:?}", Some(5).is_some()); // >> true

    // ▼is_none: none?
    println!("{:?}", (None as Option<isize>).is_none()); // >> true

    // ▼as_ref: 所有権の移動を防ぐ
    let text: Option<String> = Some("foo".to_string());
    let length: Option<usize> = text.as_ref().map(|s| s.len()); // 所有権を map に渡さない
    println!("{:?}", length);                     // >> Some(3)
    println!("still can print text: {:?}", text); // >> still can print text: Some("foo")

    // ▼as_mut: 中身を変更できる
    let mut v = Some(5);
    match v.as_mut() {
        Some(v) => *v = 6,
        None => {},
    }
    println!("{:?}", v);        // >> Some(6)

    // ▼as_pin_mut: ?

    // ▼expect: エラーメッセージを書いた引き換えに中身を出してくれる
    println!("{:?}", Some(5).expect("error")); // >> 5

    // ▼unwrap: 中身を出す。なければエラー
    println!("{:?}", Some(5).unwrap()); // >> 5

    // ▼unwrap_or: 中身を出す。なければ指定した値
    println!("{:?}", None.unwrap_or(5)); // >> 5

    // ▼unwrap_or_else: 中身を出す。なければ指定したクロージャーの結果
    println!("{:?}", None.unwrap_or_else(||5)); // >> 5

    // ▼unwrap_or_default: 中身を出す。なければ指定したクロージャーの結果
    println!("{:?}", (None as Option<isize>).unwrap_or_default()); // >> 0

    // ▼unwrap_unchecked: Noneなら実行されなくなる？
    println!("{:?}", unsafe { Some(5).unwrap_unchecked() }); // >> 5
    // println!("{:?}", unsafe { (None as Option<isize>).unwrap_unchecked() }); // 意味がわからないが、実行されない。exit している？

    // ▼map: yield_self
    println!("{:?}", Some("foo").map(|e| e.len()));                         // >> Some(3)
    println!("{:?}", (None as Option<&str>).map_or(9, |e| e.len()));        // >> 9
    println!("{:?}", (None as Option<&str>).map_or_else(||9, |e| e.len())); // >> 9

    // ▼ok_or: Result 型に変換
    // ▼ok_or_else: Result 型に変換(クロージャ版)
    println!("{:?}", Some(1).ok_or("x"));                        // >> Ok(1)
    println!("{:?}", (None as Option<isize>).ok_or("x"));        // >> Err("x")
    println!("{:?}", (None as Option<isize>).ok_or_else(||"x")); // >> Err("x")

    // ▼as_deref: ?
    println!("{:?}", Some("1".to_owned()).as_deref());   // >> Some("1")
    println!("{:?}", (None as Option<&str>).as_deref()); // >> None

    // ▼as_deref_mut: ?

    // ▼iter:
    // ▼iter_mut:

    // ▼and: option && option
    let none: Option<isize> = None;
    println!("{:?}", Some(1).and(none));    // >> None
    println!("{:?}", none.and(Some(1)));    // >> None
    println!("{:?}", Some(1).and(Some(2))); // >> Some(2)

    // ▼or: option || option
    let none: Option<isize> = None;
    println!("{:?}", Some(1).or(none));    // >> Some(1)
    println!("{:?}", none.or(Some(1)));    // >> Some(1)
    println!("{:?}", Some(1).or(Some(2))); // >> Some(1)
    println!("{:?}", none.or(none));       // >> None

    // ▼or_else: Some(1) || { Some(2) }.call
    let none: Option<isize> = None;
    println!("{:?}", Some(1).or_else(||Some(2)));    // >> Some(1)
    println!("{:?}", none.or_else(||Some(2)));       // >> Some(2)

    // ▼xor: Some ^ Some
    let none: Option<isize> = None;
    println!("{:?}", Some(1).xor(Some(2)));    // >> None
    println!("{:?}", Some(1).xor(none));       // >> Some(1)

    // ▼and_then: Some なら yield_self
    println!("{:?}", Some(5).and_then(|e| Some(e * 2)));   // >> Some(10)
    println!("{:?}", Some(5).and_then::<isize, _>(|_| None));   // >> None

    // ▼filer: Some なら yield_self して結果が true なら元の Some を返す
    println!("{:?}", Some(6).filter(|e| e % 2 == 0));   // >> Some(6)
    println!("{:?}", None.filter(|e| e % 2 == 0));      // >> None

    // ▼insert: 値をセットしてその値への参照を返す
    let mut o = Some(1);
    let r = o.insert(2);
    println!("{:?}", r);        // >> 2
    println!("{:?}", o);        // >> Some(2)

    // ▼get_or_insert: 値をセットしてその値への参照を返す。すでに値があればそれへの参照を返す
    let mut x = Some(1);
    let r = x.get_or_insert(2);
    println!("{:?}", r);        // >> 1
    println!("{:?}", x);        // >> Some(1)

    // ▼get_or_insert_with: 値をセットしてその値への参照を返す。すでに値があればそれへの参照を返す。クロージャー版
    let mut x = Some(1);
    let r = x.get_or_insert_with(||2);
    println!("{:?}", r);        // >> 1
    println!("{:?}", x);        // >> Some(1)

    // ▼take: Some ならそれを返す
    let mut v = Some(1);
    println!("{:?}", v.take()); // >> Some(1)
    println!("{:?}", v);        // >> None

    // ▼replace: 中身を置き換える。
    let mut v = Some(1);
    v.replace(2);
    println!("{:?}", v); // >> Some(2)

    // ▼zip: まぜる。None ならまざらない。nightly で zip_with, unzip もある
    println!("{:?}", Some(1).zip(Some(2))); // >> Some((1, 2))

    // ▼copied:
    // ▼cloned:

    // ▼transpose: OptionとResultの囲み方の相互変換 Ok(Some(1)) ←→ Some(Ok(1))
    #[derive(Debug, Eq, PartialEq)]
    struct SomeErr;
    let a: Result<Option<i32>, SomeErr> = Ok(Some(1));
    let b: Option<Result<i32, SomeErr>> = Some(Ok(1));
    println!("{:?}", a.transpose()); // >> Some(Ok(1))
    println!("{:?}", b.transpose()); // >> Ok(Some(1))

    // ▼flatten: Optionの入れ子を1段階だけ解除
    println!("{:?}", Some(Some(1)).flatten());       // >> Some(1)
    println!("{:?}", Some(Some(Some(1))).flatten()); // >> Some(Some(1))

    // ▼default: 初期値
    let v: Option<i32> = Option::default();
    println!("{:?}", v);        // >> None
}
