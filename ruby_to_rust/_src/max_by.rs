fn main() {
    println!("{:?}", [2_isize, 3, -4].iter().max_by(|a, b| a.cmp(b)));
}
