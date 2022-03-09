fn main() {
    let mut v = vec![7, 6, 5];
    v.sort_by(|a, b| a.cmp(b));
    println!("{:?}", v);
}
