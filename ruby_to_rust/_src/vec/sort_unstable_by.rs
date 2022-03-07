fn main() {
    // ▼sort_unstable_by: ?
let mut v = vec![6, 8, 7, 5];
v.sort_unstable_by(|a, b| a.cmp(b));
println!("{:?}", v);
}
