// -*- compile-command: "cargo test -- --nocapture" -*-
// pub fn my_func2(a: i32, b: i32) -> i32 {
//     a + b
// }

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
    let value_i8: i8 = -128;
    println!("value_i8: {}, {} bytes, {:?}", value_i8, std::mem::size_of_val(&value_i8), as_raw_bytes(&value_i8));
    let value_u8: u8 = 255;
    println!("value_u8: {}, {} bytes, {:?}", value_u8, std::mem::size_of_val(&value_u8), as_raw_bytes(&value_u8));

    // 16
    let value_i16: i16 = -32768;
    println!("value_i16: {}, {} bytes, {:?}", value_i16, std::mem::size_of_val(&value_i16), as_raw_bytes(&value_i16));
    let value_u16: u16 = 65535;
    println!("value_u16: {}, {} bytes, {:?}", value_u16, std::mem::size_of_val(&value_u16), as_raw_bytes(&value_u16));

    // 32
    let value_i32: i32 = -2147483648;
    println!("value_i32: {}, {} bytes, {:?}", value_i32, std::mem::size_of_val(&value_i32), as_raw_bytes(&value_i32));
    let value_u32: u32 = 4294967295;
    println!("value_u32: {}, {} bytes, {:?}", value_u32, std::mem::size_of_val(&value_u32), as_raw_bytes(&value_u32));

    // 64
    let value_i64: i64 = -9223372036854775808;
    println!("value_i64: {}, {} bytes, {:?}", value_i64, std::mem::size_of_val(&value_i64), as_raw_bytes(&value_i64));
    let value_u64: u64 = 18446744073709551615;
    println!("value_u64: {}, {} bytes, {:?}", value_u64, std::mem::size_of_val(&value_u64), as_raw_bytes(&value_u64));

    // 128
    let value_i128: i128 = -170141183460469231731687303715884105728;
    println!("value_i128: {}, {} bytes, {:?}", value_i128, std::mem::size_of_val(&value_i128), as_raw_bytes(&value_i128));
    let value_u128: u128 = 340282366920938463463374607431768211455;
    println!("value_u128: {}, {} bytes, {:?}", value_u128, std::mem::size_of_val(&value_u128), as_raw_bytes(&value_u128));

    // CPUのちょうどいいやつ
    // いつもの実行環境だと isize は 8 バイトなので i64 相当だとわかる
    let value_isize: isize = -9223372036854775808;
    println!("value_isize: {}, {} bytes, {:?}", value_isize, std::mem::size_of_val(&value_isize), as_raw_bytes(&value_isize));
    let value_usize: usize = 18446744073709551615;
    println!("value_usize: {}, {} bytes, {:?}", value_usize, std::mem::size_of_val(&value_usize), as_raw_bytes(&value_usize));

    // 浮動小数点
    let value_f32: f32 = -2147483648.0;
    println!("value_f32: {}, {} bytes, {:?}", value_f32, std::mem::size_of_val(&value_f32), as_raw_bytes(&value_f32));
    let value_f64: f64 = -9223372036854775808.0;
    println!("value_f64: {}, {} bytes, {:?}", value_f64, std::mem::size_of_val(&value_f64), as_raw_bytes(&value_f64));

    // 文字
    // なんと 'a' でも4バイト。というかすべて4バイトのようだ
    let value_ascii: char = 'a';
    println!("value_ascii: {}, {} bytes, {:?}", value_ascii, std::mem::size_of_val(&value_ascii), as_raw_bytes(&value_ascii));
    let value_kanji: char = '漢';
    println!("value_kanji: {}, {} bytes, {:?}", value_kanji, std::mem::size_of_val(&value_kanji), as_raw_bytes(&value_kanji));
    let value_emoji: char = '🍣';
    println!("value_emoji: {}, {} bytes, {:?}", value_emoji, std::mem::size_of_val(&value_emoji), as_raw_bytes(&value_emoji));

    // bool 1 byte
    let value_true: bool = true;
    println!("value_true: {}, {} bytes, {:?}", value_true, std::mem::size_of_val(&value_true), as_raw_bytes(&value_true));
    let value_false: bool = false;
    println!("value_false: {}, {} bytes, {:?}", value_false, std::mem::size_of_val(&value_false), as_raw_bytes(&value_false));

    // ユニット型 (配列？)
    let value_ary = (10, 20, 30);
    println!("value_ary: {:?}, {} bytes, {:?}", value_ary, std::mem::size_of_val(&value_ary), as_raw_bytes(&value_ary));
}

pub fn command_shadowing() {
    let value = 1;
    let value = value + 2;
    assert_eq!(value, 3);
    println!("success");
}

pub fn command_string() {
    // 文字列リテラル(なのか？)
    let value_str1 = "ab";
    println!("value_str1: {:?}, {} bytes, {:?}", value_str1, std::mem::size_of_val(&value_str1), as_raw_bytes(&value_str1));

    // 文字列リテラルからコピーしてヒープに確保したものでポインタではなく
    // スタックに確保した ptr, len, capacity の構造体へのポインタになっている
    let value_str2 = String::from("ab");
    println!("value_str2: {:?}, {} bytes, {:?}", value_str2, std::mem::size_of_val(&value_str2), as_raw_bytes(&value_str2));
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
