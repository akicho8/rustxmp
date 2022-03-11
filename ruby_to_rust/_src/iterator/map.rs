fn main() {
    println!("{:?}", [5, 6, 7].iter().map(|e| e * 10).collect::<Vec<_>>());
}
