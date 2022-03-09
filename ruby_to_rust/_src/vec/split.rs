fn main() {
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    println!("{:?}", v.split(|&e| e == 0).collect::<Vec<_>>());
}
