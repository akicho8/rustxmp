fn main() {
    let mut s = String::from("foo");
    s.insert_str(1, "__"); // 文字列
    println!("{:?}", s);
}
