fn main() {
    use itertools::Itertools;
    println!("{:?}", [5, 6, 7].iter().combinations(2).collect::<Vec<_>>());
}
