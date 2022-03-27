fn main() {
    let mut s = String::new();
    println!("{:?}", s.capacity());
    s.reserve_exact(100000);
    println!("{:?}", s.capacity());
}
