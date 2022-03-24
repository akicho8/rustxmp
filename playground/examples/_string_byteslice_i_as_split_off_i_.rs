fn main() {
    let mut s = String::from("foo");
    println!("{:?}", s.split_off(1));
    println!("{:?}", s);
}
