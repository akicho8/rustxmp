fn main() {
    let mut s = String::from("foo");
    println!("{:?}", s.capacity());
    s.reserve(65535);
    println!("{:?}", s.capacity());
}
