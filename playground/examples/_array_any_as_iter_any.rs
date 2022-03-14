fn main() {
    println!("{:?}", [5, 6, 7].iter().any(|&e| e >= 6));
}
