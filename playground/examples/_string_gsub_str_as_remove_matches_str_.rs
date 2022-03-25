#![feature(string_remove_matches)]

fn main() {
    let mut s = String::from("foo_bar");
s.remove_matches("bar");
println!("{:?}", s);
}
