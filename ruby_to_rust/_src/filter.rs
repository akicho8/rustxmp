fn main() {
    println!("{:?}", [2, 3, 4].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>());
}
