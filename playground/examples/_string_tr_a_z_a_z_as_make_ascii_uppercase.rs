fn main() {
    let mut s = String::from("aAöÖ❤");
    s.make_ascii_uppercase();
    println!("{:?}", s);
}
