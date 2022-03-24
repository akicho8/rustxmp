fn main() {
    let s = String::from("foo\nbar\nbaz\n");
    println!("{:?}", s.lines().collect::<Vec<_>>());
}
