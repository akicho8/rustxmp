use std::collections::HashMap;

fn main() {
    let mut map = HashMap::new();
    /*
    let mut map: HashMap<&str, fn()> = HashMap::new();
    */
    map.insert("func1", func1 as fn());
    map.insert("func2", func2 as fn());
    /*
    map.insert(String::from("func1"), func1);
    map.insert(String::from("func2"), func2);
    */
    map["func2"]();
}

fn func1() {
    println!("1")
}

fn func2() {
    println!("2")
}
