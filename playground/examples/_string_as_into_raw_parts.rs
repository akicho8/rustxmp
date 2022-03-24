#![feature(vec_into_raw_parts)]

fn main() {
    let s = String::from("foo");
    let (ptr, len, cap) = s.into_raw_parts();
    println!("{:?}", ptr);
    println!("{:?}", len);
    println!("{:?}", cap);
}
