fn main() {
    println!("{:?}", vec![5, 6].into_iter().reduce(|a, e| a + e));
}
