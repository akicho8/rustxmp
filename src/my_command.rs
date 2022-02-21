// -*- compile-command: "cargo test -- --nocapture" -*-
// pub fn my_func2(a: i32, b: i32) -> i32 {
//     a + b
// }

// use std::fmt::Debug::fmt;

// use std::env;
// use std::fs::File;
// use std::io::prelude::*;

// use std::collections::HashMap;
// use std::ops::Deref;

// xの中身をバイト列として見るための関数
// https://qnighy.hatenablog.com/entry/2017/03/04/131311
fn as_raw_bytes<'a, T:?Sized>(x: &'a T) -> &'a [u8] {
    unsafe {
        std::slice::from_raw_parts(x as *const T as *const u8, std::mem::size_of_val(x))
    }
}

pub fn command_hello() {
    println!("こんにちは");
}

pub fn command_ping() {
    println!("PONG");
}

pub fn command_cat() {
    // let args: Vec<String> = env::args().collect();
    // let filename = &args[2];
    // let mut f = File::open(filename).expect("ファイルが見つかりません");
    // let mut contents = String::new();
    // f.read_to_string(&mut contents).expect("失敗しました");
    // print!("{}", contents);
    println!("CAT");
}

pub fn command_assert() {
    assert!(false, "(ここが失敗したときに表示されるメッセージ)")
}

pub fn command_scalar() {
    // 8
    let value: i8 = -128;
    println!("i8: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: u8 = 255;
    println!("u8: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 16
    let value: i16 = -32768;
    println!("i16: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: u16 = 65535;
    println!("u16: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 32
    let value: i32 = -2147483648;
    println!("i32: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: u32 = 4294967295;
    println!("u32: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 64
    let value: i64 = -9223372036854775808;
    println!("i64: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: u64 = 18446744073709551615;
    println!("u64: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 128
    let value: i128 = -170141183460469231731687303715884105728;
    println!("i128: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: u128 = 340282366920938463463374607431768211455;
    println!("u128: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // CPUのちょうどいいやつ
    // いつもの実行環境だと isize は 8 バイトなので i64 相当だとわかる
    let value: isize = -9223372036854775808;
    println!("isize: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: usize = 18446744073709551615;
    println!("usize: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 浮動小数点
    let value: f32 = -2147483648.0;
    println!("f32: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: f64 = -9223372036854775808.0;
    println!("f64: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 文字
    // なんと 'a' でも4バイト。というかすべて4バイトのようだ
    let value: char = 'A';
    println!("A: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: char = '\x41';
    println!("A: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: char = '漢';
    println!("kanji: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: char = '🍣';
    println!("寿司: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: char = '\u{1F363}';
    println!("寿司: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // bool 1 byte
    let value: bool = true;
    println!("true: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: bool = false;
    println!("false: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // ユニット型 (配列？)
    let value = (10, 20, 30);
    println!("(): {:?}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
}

// 同名変数があっても無視できるのが shadowing
pub fn command_shadowing() {
    let value = 1;
    let value = value + 2;      // すでに変数が使われているのでエラーにな"らない"
    assert_eq!(value, 3);
    println!("success");
}

pub fn command_string() {
    // 文字列リテラル(なのか？)
    // 文字列の先頭ポインタを指している？ よくわからない
    let value = "ab";
    println!("str1: {:?}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 構造は同じなので実際は &str 型になっていることがわかる
    let value: &str = "ab";
    println!("str1: {:?}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 文字列リテラルからコピーしてヒープに確保したものでポインタではなく
    // スタックに確保した ptr, len, capacity の構造体へのポインタになっている
    let value = String::from("ab");
    println!("str2: {:?}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 文字列の合体

    // let a = "a";
    // let b = "b";
    // println!("{:?}", a + b);  // 動かない

    let a = "a";
    let b = "b";
    let c = format!("{}{}", a, b);
    println!("{:?}", c);

    let a = String::from("a");
    let b = String::from("b");
    // println!("{:?}", a + b);    // 動かない
    let c = format!("{}{}", a, b);
    println!("{:?}", a + &b);   //動くけどわかりにくい
    println!("{:?}", c);

    // String::from は to_string() でもよい
    let v = String::from("x").to_string() + &String::from("x").to_string();
    // let v = "x" + "x"; // ← 動かない
    // let v = "x".to_owned() + "x"; ← これだと動くけど意味不明
    println!("{:?}", v);

    // 範囲
    let v = "0123";
    println!("{:?}", &v[0..2]);       // 01
    println!("{:?}", &v[..2]);        // 01
    println!("{:?}", &v[0..=1]);      // 01
    println!("{:?}", &v[2..v.len()]); // 23
    println!("{:?}", &v[2..]);        // 23
    println!("{:?}", &v[0..v.len()]); // 0123
    println!("{:?}", &v[..]);         // 0123

    // 空の文字列
    let mut s = String::new();
    s.push_str("a");
    s.push_str("b");
    println!("{:?}", s);  // ab

    // 文字列の長さ
    println!("{:?}", String::from("あい").len()); // 6
    println!("{:?}", "あい".len());               // 6

    // 全角を含む文字列から正しく文字を添字でアクセスする方法はこんなに面倒
    let str = "あい";
    let mut list: Vec<char> = Vec::new();
    for ch in str.chars() {
        println!("{:?}", ch);
        list.push(ch);
    }
    println!("{:?}", list[0]);
    println!("{:?}", list[1]);
    // 元に戻す
    // let list = &list[1..2]; ← とした場合は push(*ch) としないといけない。意味はわからない
    let mut s = String::new();
    for ch in list {
        s.push(ch);
    }
    println!("{:?}", s);
}

pub fn command_struct() {
    struct Rect {
        w: usize,
        h: usize,
    }

    impl Rect {
        fn area(&self) -> usize {
            self.w * self.h
        }

        fn can_hold(&self, other: &Rect) -> bool {
            self.w >= other.w && self.h >= other.h
        }
    }

    let rect1 = Rect { w: 2, h: 3 };
    assert_eq!(rect1.area(), 6);
    assert_eq!(rect1.can_hold(&rect1), true);

    // フィールドのない構造体
    #[derive(Debug)]
    struct Color(i32, i32, i32);
    println!("{:?}", Color(1, 2, 3));
    println!("{:?}", Color(1, 2, 3).1); // 2

    // 構造体のサイズを調べるには？
    #[derive(Debug)]
    #[repr(C)]
    struct Foo {
        value: i32,
    }
    let v = Foo { value: 1, };
    println!("{:?}", v.value);
    println!("{:?}", std::mem::size_of::<Foo>());
}

pub fn command_wip_command_list() {
    // struct Command {
    //     name: String,
    //     desc: String,
    //     func: fn(),
    // }

    // impl Command {
    //     fn area(&self) -> usize {
    //         self.w * self.h
    //     }
    //     fn can_hold(&self, other: &Rect) -> bool {
    //         self.w >= other.w && self.h >= other.h
    //     }
    // }

    // // #[derive(Debug)]
    // let commands = (
    //     Command { name: String::from("my_func1"), desc: String::from(""), func: my_func1, },
    // );
    // let command = commands.0;
    // command.func();

    // assert_eq!(rect1.area(), 6);
    // assert_eq!(rect1.can_hold(&rect1), true);

    // println!("{:?}", commands);

}

// fn my_func1() {
// }

pub fn command_hash_map() {
    use std::collections::HashMap;

    let mut value_map1 = HashMap::new();

    value_map1.insert(String::from("A"), 10);
    value_map1.insert(String::from("B"), 20);
    value_map1.entry(String::from("C")).or_insert(30); // キーがないので入る hash["C"] ||= 30
    value_map1.entry(String::from("C")).or_insert(40); // キーがすでに入るので無視

    println!("{:?}", value_map1);
}

// FOO=abc cargo r env
pub fn command_env() {
    use std::env;

    let value = env::var("FOO").is_err(); // value = ENV["FOO"].blank?
    println!("ENV['FOO'].blank? -> {:?}", value);

    let value = env::var("FOO").unwrap(); // value = ENV["FOO"]
    println!("ENV['FOO'] -> {:?}", value);
}

pub fn command_closure() {
    let c = 10;
    let sum = |a, b| { a + b + c }; // sum = -> a, b { a + b + c }
    println!("{:?}", sum(1, 2));

    // struct Foo {
    //     ary: Vec<FnOnce<Args>>,
    // }
    // let foo = Foo { ary: [|a, b| { a + b }] };
    // println!("{:?}", foo.ary[0](1, 2));
}

pub fn command_enum() {
    #[derive(Debug)]
    enum Foo {
        A,
        B,
    }
    println!("{:?}", Foo::A as i32);
    println!("{:?}", Foo::B as i32);

    #[derive(Debug)]
    enum ColorType {
        TypeRGB(u8, u8, u8),
        TypeName(String),
    }

    let value = ColorType::TypeRGB(0, 0, 255);
    println!("{:?}", value);
    // println!("{}", value as i32);

    let value = ColorType::TypeName(String::from("blue"));
    println!("{:?}", value);
    // println!("{}", value as i32);
}

// 想定した挙動と異なる
// cargo r stderr > foo.txt でリダイレクトされてしまう
pub fn command_stderr() {
    eprintln!("エラー出力(のはずだがリダイレクトされてしまう)");    // STDERR.puts "xxx"
}

// Vec だけど数学のベクトルと関係なく、拡張可能な配列を表している
pub fn command_vec() {
    let value: Vec<isize> = Vec::new();
    println!("{:?}", value);

    let value = vec![1];         // vec![] とは書けない。引数がないと型が決められないからか？
    println!("{:?}", value);

    // push, pop
    let mut value: Vec<isize> = Vec::new();
    value.push(1);
    println!("value       -> {:?}", value);       // []
    println!("value.pop() -> {:?}", value.pop()); // Some(1)
    println!("value.pop() -> {:?}", value.pop()); // None

    // アクセス
    let value = vec![10, 20];
    println!("{:?}", value[0]);
    // println!("{:?}", value[-1]); // value[-1] はエラー。気が利かない。

    // 上書きではない直接セットはエラー
    // let mut value = vec![];
    // value[1] = 20;              // エラー。[nil, 20] になったりしない。

    // 配列外にアクセスしても get なら問題ない
    let value = vec![10];
    println!("{:?}", value.get(1));          // None
    println!("{:?}", value.get(0));          // Some(10)
    println!("{:?}", value.get(0).unwrap()); // 10

    // first last
    let value = vec![10, 20, 30];
    // let value: Vec<i32> = Vec::new();

    println!("{:?}", value.get(0));               // Some(10)
    println!("{:?}", value.first());              // Some(10)

    println!("{:?}", value.get(value.len() - 1)); // Some(30)
    println!("{:?}", value.last());               // Some(30)

    // remove
    let mut value = vec![10, 20, 30];
    println!("{:?}", value.remove(1)); // 20
    println!("{:?}", value);           // [10, 30]

    // if v = value.first 相当
    let value = vec![10, 20, 30];
    if let Some(n) = value.first() {
        println!("{:?}", n);
    }

    // 構造体の関数ポインタは (ary[0].func)(1) のようにしないと実行できない
    struct Foo {
        name: String,
        func: fn(i32) -> i32,
    }
    let ary = vec![
        Foo { name: "a".to_string(), func: |v| v + 1, },
    ];
    println!("{:?}", ary[0].name);
    println!("{:?}", (ary[0].func)(1));

    // 連結
    let a = vec![1, 2];
    let b = vec![3, 4];
    println!("{:?}", [a, b].concat()); // [1, 2, 3, 4]

    // 文字列として連結
    let v = vec!["a", "b", "c"];
    println!("{:?}", v.join("-")); // "a-b-c"

    // 分割
    let s = "a-b-c";
    for v in s.split("-") {
        println!("{:?}", v);
    }

    // sort! なので注意
    let mut v = vec!["a", "c", "b"];
    v.sort();
    println!("{:?}", v);        // ["a", "b", "c"]

    // reverse! なので注意
    let mut v = vec!["a", "c", "b"];
    v.reverse();
    println!("{:?}", v);        // ["a", "c", "b"]

    // イテレータ
    let v = vec!["a", "b", "c"];
    let mut i = v.iter();
    println!("{:?}", i);        // Iter(["a", "b", "c"])
    println!("{:?}", i.next()); // Some("a")
    println!("{:?}", i.next()); // Some("b")
    println!("{:?}", i.next()); // Some("c")
    println!("{:?}", i.next()); // None

    // map
    let v = vec![2, 3];
    let v = v.iter().map(|e| e * 2);
    println!("{:?}", v);        // Map { iter: Iter([2, 3]) }
    for v in v {
        println!("{:?}", v);
    }
}

pub fn command_syntax() {
    let value = if true { 1 } else { 0 }; // よくわかんが else を書かないとエラーになる
    println!("{}", value);

    // loop は break で値を返せる
    let mut i = 0;
    let retv = loop {
        if i >= 2 {
            break "loopの戻値";
        }
        println!("loop i = {}", i);
        i += 1;
    };
    println!("{:?}", retv);

    // while
    let mut i = 0;
    while i < 2 {
        println!("while i = {}", i);
        i += 1;
    };
    println!("{:?}", retv);

    // for
    // 0...2 => 0..2
    // 0..2  => 0..=2
    for i in 0..2 {
        println!("for i = {}", i);
    }
    for i in 0..=2 {
        println!("for i = {}", i);
    }

    // & をつけるだけ。これはなに？
    let values = vec![10, 20, 30];
    for v in &values {
        println!("v in values: {}", v);
    }
    println!("{:?}", values);

    // イテレータ(参照させるだけ)
    let values = vec![10, 20, 30];
    for v in values.iter() {
        println!("iter {}", v);
    }
    println!("{:?}", values);

    // イテレータ(移動するので使えない)
    let values = vec![10, 20, 30];
    for v in values.into_iter() {
        println!("iter {}", v);
    }
    // println!("{:?}", values); ← なんとエラー

    // イテレータ(中身を更新する場合)
    let mut values = vec![10, 20, 30];
    for v in values.iter_mut() {
        *v += 1;
        println!("iter {}", v);
    }
    println!("{:?}", values);

    ////////////////////////////////////////////////////////////////////////////////

    // case や switch に相当
    let value = 1;
    let value = match value {
        1 => 10,
        2 => 20,
        _ => 30,                // すべての値をカバーしないといけない
    };
    println!("{:?}", value);

    let value = true;
    let value = match value {
        true  => 10,            // boolean のすべての値をカバーしているので
        false => 20,            // _ => はいらない
    };
    println!("{:?}", value);

    // 新しいRubyでサポートされた別にいらんやつ
    let value = (2, 3, 4);
    match value {
        (2, y, z) => println!("y={} z={}", y, z),
        (3, ..)   => println!("x=3"),
        _         => println!("その他"),
    };

    // enum の場合
    enum ColorType {
        Blue,
        RGB(usize, usize, usize),
    }
    let _ = ColorType::RGB(0, 0, 0);
    let value = ColorType::Blue;
    match value {
        ColorType::Blue       => println!("blue"),
        ColorType::RGB(r,g,b) => println!("RGB({},{},{})", r, g, b),
    };

    // ポインタとref
    let value = &1;             // i32 の値へののポインタ？？？
    // 下の3つはどれも同じ
    match value {
        &v => println!("v = {:?}", v), // v = 1
    };
    match *value {
        v => println!("v = {:?}", v), // v = 1
    };
    match value {
        ref v => println!("v = {:?}", v), // v = 1
    };
    // mut の場合は ref mut が必要
    let mut value = 1;             // i32 の値へののポインタ？？？
    match value {
        ref mut v => println!("v = {:?}", v), // v = 1
    };
}

pub fn command_unsafe() {
    // ポインタと参照。参照には unsafe が必要
    let value: i8 = 3;
    let address = &value as *const i8; // ポインタを得る方法
    println!("{:?}", address);         // アドレスわかる
    unsafe {                           // 実体を参照する場合は unsafe {} が必要
        println!("{:?}", *address);    // 値を得る
    }

    // unsafe がついた関数は unsafe で囲まないと使えない
    unsafe {
        unsafe_func1();
    }
}

unsafe fn unsafe_func1() {
}

static mut G_COUNTER: i8 = 0;   // グローバル変数には必ず型を書かないといけない
pub fn command_global() {
    unsafe {
        G_COUNTER += 1;         // 更新も
    }
    unsafe {
        println!("{:?}", G_COUNTER); // 参照も unsafe が必要
    }
}

pub fn command_fn() {
    // println!("{:?}", fn_array());
}
// pub fn fn_array<T>() -> Vec<T> {
//     let value: Vec<T> = vec![10, 20];
//     value
// }

pub fn command_tuple() {
    let list = (1, "2", vec![3]);
    println!("{:?}", list.0);
    println!("{:?}", list.1);
    println!("{:?}", list.2);

    let list = tuple_return_func();
    println!("{:?}", list.0);
    println!("{:?}", list.1);
    println!("{:?}", list.2); // list[2] と書けない

}
fn tuple_return_func() -> (i32, &'static str, Vec<i32>) {
    (1, "2", vec![3])
}

// struct Foo {
//     name: String,
// }

// const GLOBAL_RECORDS: [Foo;0] = [
//     Foo { name: String::from("a"), },
// ];
// println!("{:?}", GLOBAL_RECORDS);

// const FOO: [i32; ] = [1,2,3]; クソ構文

static G_NUMBERS1: [i32; 2] = [1, 2]; // 自分で個数を数えないといけないとかありえん
static G_NUMBERS2: &'static [i32] = &[1, 2];

pub fn command_array() {
    println!("{:?}", G_NUMBERS1);
    println!("{:?}", G_NUMBERS2);

    let ary = [10, 20];
    println!("{:?}", ary);

    // let ary = [10, "20"];       // エラー。異なる種類はいれられない
    // println!("{:?}", ary);

    struct Foo {
        name: String,
        age: u8,
    }
    let ary = [
        Foo { name: String::from("a"), age: 1 }, // String::from を書きたくない。どうすれば？
        Foo { name: String::from("b"), age: 2 },
    ];
    // println!("{:?}", ary);   // 表示できない

    let _ = ary[0].name;
    let _ = ary[0].age;

    // 型を指定するときは必ずサイズ指定が必要
    let ary: [u8; 2] = [1, 2];  // この設計は理解が難しい
    println!("{:?}", ary);

    // 配列を1で初期化
    let ary: [u8; 2] = [1; 2];
    println!("{:?}", ary);
}

// 数値のリテラル表現
pub fn command_literal() {
    let _ = 2_5_5;              // 10
    let _ = 0xf_f;              // 16
    let _ = 0o7_7;              // 8
    let _ = 0b1111_1111;        // 2
    let _ = b'a';               // 1バイト文字
    let _ = 'a';                // 4バイト文字 b'a' との違いに注意 char 型
}

pub fn command_option() {
    let value = Some(1);
    println!("{:?}", value);
    println!("{:?}", value.unwrap());
    let v = match value {
        Some(i) => i,
        None    => 0,
    };
    println!("{}", v);

    let value = None;
    println!("{:?}", value);
    let v = match value {
        Some(i) => i,
        None    => 0,
    };
    println!("{}", v);

    // Some なら値を処理するには？
    let value = Some(1);
    if let Some(v) = value {
        println!("{:?}", v);
    }

}

pub fn command_transmute() {
    // 4バイト -> u32 変換
    let a = [0u8, 1u8, 2u8, 3u8];
    unsafe {
        let b = std::mem::transmute::<[u8; 4], u32>(a);
        println!("0x{:X}", b);  // 0x3020100
    }

    // u32 を4バイト変換
    let a: u32 = 0x33221100;
    unsafe {
        let b = std::mem::transmute::<u32, [u8; 4]>(a);
        println!("{:X} {:X} {:X} {:X}", b[0], b[1], b[2], b[3]); // 00 11 22 33
    }
}

pub fn command_result() {
    let v = "123".parse::<i32>();
    println!("{:?}", v);        // Ok(123)
    if let Ok(n) = v {
        println!("{:?}", n);    // 123
    }

    let v = "abc".parse::<i32>();
    println!("{:?}", v);        // Err(ParseIntError { kind: InvalidDigit })
    if let Err(e) = v {
        println!("{:?}", e);    // ParseIntError { kind: InvalidDigit }
    }

    let v = "abc".parse::<i32>();
    match v {
        Ok(n)  => println!("{:?}", n),
        Err(e) => println!("{:?}", e),
    }

    println!("{:?}", "123".parse::<i32>().unwrap());

    // println!("{:?}", half_number("10"));
    println!("{:?}", half_number2("10"));
    println!("{:?}", half_number3("10"));
    println!("{:?}", half_number4("10"));
    println!("{:?}", half_number5("ab"));

    let n = "10".parse::<i32>().expect("失敗");
    println!("{:?}", n);
}

// use std::num::ParseIntError;
// fn half_number1(s: &str) -> Result<i32, ParseIntError> {
//     match s.parse::<i32>() {
//         Ok(n) => Ok(n / 2),
//         Err(e) => Err(e),
//     }
// }

use std::num::ParseIntError;
type Result2<T> = std::result::Result<T, ParseIntError>;
fn half_number2(s: &str) -> Result2<i32> {
    match s.parse::<i32>() {
        Ok(n) => Ok(n / 2),
        Err(e) => Err(e),
    }
}
fn half_number3(s: &str) -> Result2<i32> {
    s.parse::<i32>().map(|n| n / 2)
}
fn half_number4(s: &str) -> Result2<i32> {
    let n = s.parse::<i32>()?;
    Ok(n / 2)
}
fn half_number5(s: &str) -> std::result::Result<i32, &str> {
    match s.parse::<i32>() {
        Ok(n) => Ok(n / 2),
        Err(_) => Err("日本語で独自のエラー"),
    }
}

pub fn command_generic() {
    my_print_str(&vec!["a", "b"]);
    my_print_int(&vec![1, 2]);

    my_print(&vec!["a", "b"]);
    my_print(&vec![1, 2]);

    my_print2(&vec!["a", "b"]);
    my_print2(&vec![1, 2]);
}

fn my_print_str(v: &[&str]) {
    for s in v {
        println!("{:?}", s);
    }
}

fn my_print_int(v: &[isize]) {
    for s in v {
        println!("{:?}", s);
    }
}

fn my_print<T: std::fmt::Debug>(v: &[T]) {
    for s in v {
        println!("{:?}", s);
    }
}

fn my_print2<T>(v: &[T]) where T: std::fmt::Debug {
    for s in v {
        println!("{:?}", s);
    }
}

pub fn command_trait() {
    struct C1 {
        var1: isize,
    }
    struct C2 {
        var2: isize,
    }
    trait T1 {
        fn foo(&self) -> isize;
        fn bar(&self) -> isize { 1 }
    }
    impl T1 for C1 {
        fn foo(&self) -> isize {
            self.var1 * 2
        }
    }
    impl T1 for C2 {
        fn foo(&self) -> isize {
            self.var2 * 2
        }
    }
    let c1 = C1 { var1: 10 };
    let c2 = C2 { var2: 20 };
    println!("{:?}", c1.foo());
    println!("{:?}", c2.foo());
    println!("{:?}", c1.bar());
    println!("{:?}", c2.bar());
}

pub fn command_move() {
    let a = "1".to_string(); let _b = &a; println!("{:?}", a);
    // let a = "1".to_string(); let _b =  a; println!("{:?}", a);
    let a = "1";             let _b =  a; println!("{:?}", a);
    let a = "1";             let _b =  &a; println!("{:?}", a);
    let a =  1;             let _b =  a; println!("{:?}", a);
    let a =  1;             let _b =  &a; println!("{:?}", a);
    let a = (1,2);             let _b =  a; println!("{:?}", a);
    let a = (3,4);             let _b =  &a; println!("{:?}", a);
    // let a = vec![1];             let _b =  a; println!("{:?}", a);
    let a = vec![1];             let _b =  &a; println!("{:?}", a);

    let a = [1, 2];             let _b =  a; println!("{:?}", a);
    let a = [3, 4];             let _b =  &a; println!("{:?}", a);
}

pub fn command_read_to_string() {
    if let Ok(s) = std::fs::read_to_string("main.rs") {
        println!("{:?}", s.len());
    }
    use std::fs;
    if let Ok(s) = fs::read_to_string("main.rs") {
        println!("{:?}", s.len());
    }
    use std::fs::read_to_string;
    if let Ok(s) = read_to_string("main.rs") {
        println!("{:?}", s.len());
    }

    // File#read_to_string を使う場合
    use std::fs::File;
    use std::io::Read;          // File に read_to_string が生える
    let mut file = File::open("main.rs").expect("ERROR");
    let mut s = String::new();
    file.read_to_string(&mut s).expect("ERROR");
    println!("{:?}", s.len());

    // 1バイトずつ読む
    let mut file = File::open("main.rs").expect("ERROR");
    let mut s: [u8; 1] = [0; 1];
    file.read(&mut s).expect("ERROR");
    println!("{:?}", s[0] as char);

    // 1行ずつ読む
    use std::io::BufReader;
    use std::io::BufRead;
    let mut file = File::open("main.rs").expect("ERROR");
    for line in BufReader::new(file).lines() {
        if let Ok(s) = line {
            println!("{:?}", s);
        }
    }
}

pub fn command_test10() {
}
