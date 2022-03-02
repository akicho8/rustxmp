fn main() {
    println!("{:?}", [2_i32, 3, -4].iter().max_by_key(|e| e.abs()));
}
