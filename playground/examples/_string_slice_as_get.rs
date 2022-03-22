fn main() {
    let s = String::from("foobar");
    println!("{:?}", s.get(2));
    println!("{:?}", s.get(2..=2));
    println!("{:?}", s.get(..2));
    println!("{:?}", s.get(2..));
}
