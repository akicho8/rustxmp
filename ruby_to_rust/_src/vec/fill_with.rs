fn main() {
    // ▼fill_with: ?
let mut v = vec![5, 6, 7];
v.fill_with(|| 8);
println!("{:?}", v);
}
