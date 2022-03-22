fn main() {
    let mut s = String::from("foo__");
    println!("{:?}", s.split_off(3));
    println!("{:?}", s);
}
