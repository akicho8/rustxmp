fn main() {
    let v = vec![5, 6, 7, 8];
println!("{:?}", v.windows(2).collect::<Vec<_>>());
}
