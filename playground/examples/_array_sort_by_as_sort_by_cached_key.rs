fn main() {
    let mut v = vec![7, 6, 5];
    v.sort_by_cached_key(|&e| e);
    println!("{:?}", v);
}
