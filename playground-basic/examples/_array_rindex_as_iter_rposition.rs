fn main() {
    println!("{:?}", [5, 6, 5].iter().rposition(|&e| e == 5));
}
