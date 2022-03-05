fn main() {
    println!("{:?}", [2_isize, 3, -4].iter().max_by_key(|e| e.abs()));
}
