fn main() {
    let mut s = String::from("foo");
    s.insert(1, '_'); // 文字しか受け付けない
    println!("{:?}", s);
}
