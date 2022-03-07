fn main() {
    println!("{:?}", [2, 3].iter().map(|e| e * 2).collect::<Vec<_>>());
}
