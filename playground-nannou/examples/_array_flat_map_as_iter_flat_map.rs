fn main() {
    println!("{:?}", [[5, 6], [7, 8]].iter().flat_map(|e| e).collect::<Vec<_>>());
}
