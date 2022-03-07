fn main() {
    // ▼sort_unstable_by_key: ?
let mut v = vec![-6_i32, 8, -7, 5];
v.sort_unstable_by_key(|e| e.abs());
println!("{:?}", v);
}
