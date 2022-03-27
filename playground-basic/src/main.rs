// #[tokio::main]
// async fn main() -> Result<(), Box<dyn std::error::Error>> {
//     let url = "http://openccpm.com/blog/";
//     println!("call {:?}", url);
//     let res = reqwest::get(url).await?;
//     let body = res.text().await?;
//     println!("response is {:?}", body);
//     Ok(())
// }

use std::collections::HashMap;
use std::env;

mod my_command;

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

    let mut function_map: HashMap<&str, fn()> = HashMap::new();
    // let mut function_map = HashMap::new();
    function_map.insert("こんにちは", my_command::command_hello);
    function_map.insert("ping", my_command::command_ping);
    function_map.insert("cat", my_command::command_cat);
    function_map.insert("assert", my_command::command_assert);
    function_map.insert("string", my_command::command_string);
    function_map.insert("scalar", my_command::command_scalar);
    function_map.insert("shadowing", my_command::command_shadowing);
    function_map.insert("string", my_command::command_string);
    function_map.insert("struct", my_command::command_struct);
    function_map.insert("wip_command_list", my_command::command_wip_command_list);
    function_map.insert("hash_map", my_command::command_hash_map);
    function_map.insert("env", my_command::command_env);
    function_map.insert("closure", my_command::command_closure);
    function_map.insert("enum", my_command::command_enum);
    function_map.insert("stderr", my_command::command_stderr);
    function_map.insert("vec", my_command::command_vec);
    function_map.insert("syntax", my_command::command_syntax);
    function_map.insert("unsafe", my_command::command_unsafe);
    function_map.insert("global", my_command::command_global);
    function_map.insert("fn", my_command::command_fn);
    function_map.insert("tuple", my_command::command_tuple);
    function_map.insert("array", my_command::command_array);
    function_map.insert("literal", my_command::command_literal);
    function_map.insert("option", my_command::command_option);
    function_map.insert("transmute", my_command::command_transmute);
    function_map.insert("result", my_command::command_result);
    function_map.insert("generic", my_command::command_generic);
    function_map.insert("trait", my_command::command_trait);
    function_map.insert("move", my_command::command_move);
    function_map.insert("file_read", my_command::command_file_read);
    function_map.insert("file_write", my_command::command_file_write);
    function_map.insert("stdin_read", my_command::command_stdin_read);
    function_map.insert("print", my_command::command_print);
    function_map.insert("test4", my_command::command_test4);
    function_map.insert("test5", my_command::command_test5);
    function_map.insert("test6", my_command::command_test6);
    function_map.insert("test7", my_command::command_test7);
    function_map.insert("test8", my_command::command_test8);
    function_map.insert("test9", my_command::command_test9);
    let found_func = function_map[command as &str];
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
