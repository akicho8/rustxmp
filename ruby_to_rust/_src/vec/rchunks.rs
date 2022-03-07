fn main() {
    // ▼rchunks: ?
let v = vec![5, 6, 7, 8, 9];
println!("{:?}", v.rchunks(2).collect::<Vec<_>>());
}
