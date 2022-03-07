fn main() {
    // ▼split_inclusive: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
println!("{:?}", v.split_inclusive(|&e| e == 0).collect::<Vec<_>>());
}
