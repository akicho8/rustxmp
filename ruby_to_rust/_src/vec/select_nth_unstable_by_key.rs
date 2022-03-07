fn main() {
    // ▼select_nth_unstable_by_key: ?
let mut v = vec![6_i32, 8, 7, 5];
v.select_nth_unstable_by_key(0, |e| e.abs());
println!("{:?}", v);
}
