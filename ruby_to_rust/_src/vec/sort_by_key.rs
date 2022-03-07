fn main() {
    // ▼sort_by_key: ?
let mut v = vec![7_i32, -6, 5];
v.sort_by_key(|e| e.abs());
println!("{:?}", v);
}
