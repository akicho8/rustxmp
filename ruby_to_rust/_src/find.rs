fn main() {
    println!("{:?}", [2, 3, 4].iter().find(|&&e| e == 3));
}
