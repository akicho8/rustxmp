fn main() {
    let s = String::from(" foo\r\n bar　baz\n");
    println!("{:?}", s.split_whitespace().collect::<Vec<_>>());
}
