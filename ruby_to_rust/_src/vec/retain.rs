fn main() {
    let mut v = vec![-1, -1, 1, 1];
v.retain(|&e| e > 0);
println!("{:?}", v);
}
