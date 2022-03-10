fn main() {
    let mut v = vec![5, 5, 6, 6, 5, 5, 5];
    v.dedup_by_key(|e| *e);
    println!("{:?}", v);
}
