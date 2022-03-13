fn main() {
    println!("{:?}", [5, 6, 7].iter().fold(0, |a, e| a + e));
}
