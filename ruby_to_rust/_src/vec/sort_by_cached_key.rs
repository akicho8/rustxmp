fn main() {
    let mut v = vec![7_i32, -6, 5];
let mut c = 0;
v.sort_by_cached_key(|e| { c += 1; e.abs() });
println!("{:?}", v);
println!("{:?}", c);
}
