fn main() {
    println!("{:?}", [5_isize, 6, -7].iter().max_by(|a, b| a.cmp(b)));
}
