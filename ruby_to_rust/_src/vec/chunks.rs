fn main() {
    let v = vec![5, 6, 7, 8, 9];
    println!("{:?}", v.chunks(2).collect::<Vec<_>>());
}
