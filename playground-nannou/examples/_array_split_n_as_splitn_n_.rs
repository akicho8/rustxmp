fn main() {
    let v = vec![5, 6, 0, 7, 8, 0, 9];
println!("{:?}", v.splitn(2, |&e| e == 0).collect::<Vec<_>>());
}
