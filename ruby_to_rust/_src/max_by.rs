fn main() {
    println!("{:?}", [2_i32, 3, -4].iter().max_by(|a, b| a.cmp(b)));
}
