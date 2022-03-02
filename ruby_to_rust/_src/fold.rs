fn main() {
    println!("{:?}", [2, 3, 4].iter().fold(0, |a, e| a + e));
}
