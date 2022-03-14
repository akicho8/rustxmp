fn main() {
    use itertools::Itertools;
    println!("{:?}", [5, 6, 7].iter().with_position().collect::<Vec<_>>());
}
