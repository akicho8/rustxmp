fn main() {
    println!("{:?}", [5, 6].iter().map(|e| e * 10).collect::<Vec<_>>());
println!("{:?}", [5, 6].iter().map(|e| e * 10));
}
