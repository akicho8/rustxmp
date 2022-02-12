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
    let value: char = 'a';
    println!("ascii: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: char = '漢';
    println!("kanji: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: char = '🍣';
    println!("emoji: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // bool 1 byte
    let value: bool = true;
    println!("true: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
    let value: bool = false;
    println!("false: {}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // ユニット型 (配列？)
    let value = (10, 20, 30);
    println!("(): {:?}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
}

pub fn command_shadowing() {
    let value = 1;
    let value = value + 2;
    assert_eq!(value, 3);
    println!("success");
}

pub fn command_string() {
    // 文字列リテラル(なのか？)
    let value = "ab";
    println!("str1: {:?}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));

    // 文字列リテラルからコピーしてヒープに確保したものでポインタではなく
    // スタックに確保した ptr, len, capacity の構造体へのポインタになっている
    let value = String::from("ab");
    println!("str2: {:?}, {} bytes, {:?}", value, std::mem::size_of_val(&value), as_raw_bytes(&value));
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
}

pub fn command_enum() {
    enum ColorType {
        TypeRGB(u8, u8, u8),
        TypeName(String),
    }

    let _value = ColorType::TypeRGB(0, 0, 255);
    // println!("{}", value);

    let _value = ColorType::TypeName(String::from("blue"));
    // println!("{}", value);
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
    let mut value = vec![];
    value[1] = 20;              // エラー。[nil, 20] になったりしない。
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

