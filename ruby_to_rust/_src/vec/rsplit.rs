fn main() {
    // ▼rsplit: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
println!("{:?}", v.rsplit(|&e| e == 0).collect::<Vec<_>>());
}
