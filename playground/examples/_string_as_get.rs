fn main() {
    let s = "A🥑B";
    println!("{:?}", s.get(0..1));
    println!("{:?}", s.get(1..5));
    println!("{:?}", s.get(5..6));
}
