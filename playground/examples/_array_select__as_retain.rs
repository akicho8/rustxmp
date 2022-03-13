fn main() {
    let mut v = vec![5, 6, 7, 8];
    v.retain(|&e| e >= 7);
    println!("{:?}", v);
}
