fn main() {
    // ▼select_nth_unstable_by: ?
let mut v = vec![6, 8, 7, 5];
v.select_nth_unstable_by(0, |a, b| a.cmp(b));
println!("{:?}", v);
}
