use std::env;
use std::fs::File;
use std::io::prelude::*;
use std::collections::HashMap;

fn main() {
    let args: Vec<String> = env::args().collect();
    let command = &args[1];

    // let f: fn() = command_cat;
    // f();

    // println!("{:?}", args);
    // println!("command = {}", command);

    // println!("command = {}", foo());

    // if command == "cat" {
    //     let filename = &args[2];
    //     let mut f = File::open(filename).expect("ファイルが見つかりません");
    //     let mut contents = String::new();
    //     f.read_to_string(&mut contents).expect("失敗しました");
    //     println!("{}", contents);
    // }

    // let my_closure1 = || println!("my_closure1");
    // call_me(my_closure1);
    // call_me(command_cat);

    // let mut scores = HashMap::new();
    // scores.insert(String::from("Cat"), 10);
    // scores.insert(String::from("Yellow"), 50);
    // let key = String::from("Cat");
    // let a = scores.get(&key);
    // println!("{:?}", a);
    //

    // // let mut function_map: HashMap<&str, fn()> = HashMap::new();
    let mut function_map = HashMap::new();
    function_map.insert(String::from("cat"), command_cat);
    let key = String::from(command);
    let found_func = function_map.get(&key).unwrap();
    found_func();

    // let found_func = function_map.get(&cat);
    // found_func;

    // println!("{:?}", function_map.get(&cat));

    // // scores.insert(String::from("Yellow"), 50);
    // let key2 = String::from("Cat");
    // let a1 = function_map.get(&key2);
    // println!("{:?}", a1);

    // let solar_distance = HashMap::from([
    //     ("Mercury", 0.4),
    //     // ("Venus", 0.7),
    //     // ("Earth", 1.0),
    //     // ("Mars", 1.5),
    // ]);

}

// fn foo() -> u32 {
//     1
// }

// fn call_me<F1: Fn()>(f2: F1) {
//     f2();
// }

fn command_cat() {
    let args: Vec<String> = env::args().collect();
    let filename = &args[2];
    let mut f = File::open(filename).expect("ファイルが見つかりません");
    let mut contents = String::new();
    f.read_to_string(&mut contents).expect("失敗しました");
    print!("{}", contents);
}
