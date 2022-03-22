fn main() {
    let s = String::with_capacity(65536);
    println!("{:?}", s);
    println!("{:?}", s.capacity());
}
