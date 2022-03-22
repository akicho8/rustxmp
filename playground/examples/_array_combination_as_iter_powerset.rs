fn main() {
    use itertools::Itertools;
    println!("{:?}", [5, 6, 7].iter().powerset().collect::<Vec<_>>());
}
