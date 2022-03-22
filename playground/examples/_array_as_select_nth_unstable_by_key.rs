fn main() {
    let mut v = vec![7_isize, 6, 5];
    v.select_nth_unstable_by_key(0, |e| e.abs());
    println!("{:?}", v);
}
