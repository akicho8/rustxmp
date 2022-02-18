use std::env;
use std::collections::HashMap;

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

    let mut function_map: HashMap<String, fn()> = HashMap::new();
    // let mut function_map = HashMap::new();
    function_map.insert(String::from("こんにちは"), my_command::command_hello);
    function_map.insert(String::from("ping"), my_command::command_ping);
    function_map.insert(String::from("cat"), my_command::command_cat);
    function_map.insert(String::from("assert"), my_command::command_assert);
    function_map.insert(String::from("string"), my_command::command_string);
    function_map.insert(String::from("scalar"), my_command::command_scalar);
    function_map.insert(String::from("shadowing"), my_command::command_shadowing);
    function_map.insert(String::from("string"), my_command::command_string);
    function_map.insert(String::from("struct"), my_command::command_struct);
    function_map.insert(String::from("wip_command_list"), my_command::command_wip_command_list);
    function_map.insert(String::from("hash_map"), my_command::command_hash_map);
    function_map.insert(String::from("env"), my_command::command_env);
    function_map.insert(String::from("closure"), my_command::command_closure);
    function_map.insert(String::from("enum"), my_command::command_enum);
    function_map.insert(String::from("stderr"), my_command::command_stderr);
    function_map.insert(String::from("vec"), my_command::command_vec);
    function_map.insert(String::from("syntax"), my_command::command_syntax);
    function_map.insert(String::from("unsafe"), my_command::command_unsafe);
    function_map.insert(String::from("global"), my_command::command_global);
    function_map.insert(String::from("fn"), my_command::command_fn);
    function_map.insert(String::from("tuple"), my_command::command_tuple);
    function_map.insert(String::from("array"), my_command::command_array);
    function_map.insert(String::from("test2"), my_command::command_test2);
    function_map.insert(String::from("option"), my_command::command_option);
    function_map.insert(String::from("transmute"), my_command::command_transmute);
    function_map.insert(String::from("result"), my_command::command_result);
    function_map.insert(String::from("generic"), my_command::command_generic);
    function_map.insert(String::from("trait"), my_command::command_trait);
    function_map.insert(String::from("test8"), my_command::command_test8);
    function_map.insert(String::from("test9"), my_command::command_test9);
    function_map.insert(String::from("test10"), my_command::command_test10);
    let key = String::from(command);
    let found_func = function_map[&key];
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
