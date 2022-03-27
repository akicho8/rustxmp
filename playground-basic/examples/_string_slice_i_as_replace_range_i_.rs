fn main() {
    let mut s = String::from("abcd");
    s.replace_range(..2, "__");
    println!("{:?}", s);
}
