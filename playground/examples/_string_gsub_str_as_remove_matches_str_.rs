#![feature(string_remove_matches)]

fn main() {
    let mut s = String::from("abcd abcd");
    s.remove_matches("bc");
    println!("{:?}", s);
}
