fn main() {
    // ▼rsplitn: ?
let v = vec![5, 6, 0, 7, 8, 0, 9];
println!("{:?}", v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>());
}
