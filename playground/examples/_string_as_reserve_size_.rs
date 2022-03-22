fn main() {
    let mut s = String::new();
    println!("{:?}", s.capacity());
    s.reserve(257);
    println!("{:?}", s.capacity());
}
