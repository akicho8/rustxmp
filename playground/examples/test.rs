// use itertools::Itertools;
// #![feature(string_remove_matches)]

fn main() {
    let s = String::from("foo\r\n bar\t baz\n");
    println!("{:?}", s.split_whitespace().collect::<Vec<_>>());
}
