fn main() {
    println!("{:?}", [2, 3].iter().zip([4, 5].iter()).collect::<Vec<_>>());
}
