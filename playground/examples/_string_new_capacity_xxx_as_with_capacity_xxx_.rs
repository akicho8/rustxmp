fn main() {
    let s = String::with_capacity(65535);
    println!("{:?}", s);
    println!("{:?}", s.capacity());
}
