use std::env;
use std::fs::File;
use std::io::prelude::*;
// use std::collections::HashMap;

fn main() {
    let args: Vec<String> = env::args().collect();
    let command = &args[1];

    let f: fn() = my_func1;
    f();

    println!("{:?}", args);
    println!("command = {}", command);

    // println!("command = {}", foo());

    if command == "cat" {
        let filename = &args[2];
        let mut f = File::open(filename).expect("ファイルが見つかりません");
        let mut contents = String::new();
        f.read_to_string(&mut contents).expect("失敗しました");
        println!("{}", contents);
    }

    let my_closure1 = || println!("my_closure1");
    call_me(my_closure1);
    call_me(my_func1);

    // let mut scores = HashMap::new();
    // scores.insert(String::from("Key1"), 10);
    // scores.insert(String::from("Yellow"), 50);
    // let key = String::from("Key1");
    // let a = scores.get(&key);
    // println!("{:?}", a);
    //
    // // let mut map2: HashMap<&str, fn()> = HashMap::new();
    // let mut map2 = HashMap::new();
    // map2.insert(String::from("key1"), my_func1);
    // let _key1 = String::from("key1");

    // let f3: <fn()> = map2.get(key1);
    // // f3();

    // let f3 = map2.get(&key1);
    // f3;

    // println!("{:?}", map2.get(&key1));

    // // scores.insert(String::from("Yellow"), 50);
    // let key2 = String::from("Key1");
    // let a1 = map2.get(&key2);
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

fn call_me<F1: Fn()>(f2: F1) {
    f2();
}

fn my_func1() {
    println!("my_func1");
}
