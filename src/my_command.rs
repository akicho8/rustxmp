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
}

// 符号付き整数: i8, i16, i32, i64, i128, isize（ポインタのサイズ）
// 符号無し整数: u8, u16, u32, u64, u128, usize（ポインタのサイズ）
// 浮動小数点数: f32, f64
// char: 'a', 'α', '∞'などのUnicodeのスカラー値
// bool: trueまたはfalse
// ユニット型: ()が唯一の値

pub fn command_string() {
    assert!(false, "foo")
}

//     // // use super::*;
//     // #[test]
//     // fn test_string_parse() {
//     //     assert_eq!(123, "123".parse().expect("expect_message"));
//     // }
//     // #[test]
//     // fn test_string_from() {
//     //     let mut s1 = String::from("foo"); // let mut s1 = "foo"; と書いた場合は push_str できない。なんで？
//     //     s1.push_str("bar");
//     //     assert_eq!("foobar", s1);
//     //
//     //     // let s1 = String::from("foo");
//     //     // let s2 = s1; // s1 を s2 にコピーしたあと s1 を使うとエラーになる
//     //     // println!("s2 -> {}", s1);
//     // }
//     // #[test]
//     // fn test_string_clone() {
//     //     let s1 = String::from("foo");
//     //     let s2 = s1.clone();    // 実体をコピーしている
//     //     assert_eq!(s1, s2);
//     // }
//     // #[test]
//     // fn test_string_len() {
//     //     assert_eq!(3, "foo".len());
//     //     assert_eq!(3, String::from("foo").len());
//     // }
//     // #[test]
//     // fn test_string_as_bytes() {
//     //     // let s1 = String::from("foo");
//     //     // assert_eq!(3, s1.as_bytes());
//     // }
//     // #[test]
//     // fn test_string_clear() {
//     //     let mut s1 = String::from("foo");
//     //     s1.clear();
//     //     assert_eq!("", s1);
//     // }
//     // #[test]
//     // fn test_string_slice() {
//     //     let s1 = "foobar";
//     //     assert_eq!("fo", &s1[0..2]); // .. は ... と考えて 0...2 が ruby の 0..1 になる
//     //     assert_eq!("ba", &s1[3..5]);
//     // }
// }
