fn main() {
    println!("{:?}", [5, 6, 7].iter().find(|&&e| e == 6));
}
