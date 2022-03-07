fn main() {
    println!("{:?}", [[2, 3], [4, 5]].iter().flat_map(|e| e).collect::<Vec<_>>());
}
