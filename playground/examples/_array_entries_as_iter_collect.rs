fn main() {
    println!("{:?}", [5, 6, 7].iter().collect::<Vec<_>>());

    use itertools::Itertools;
    println!("{:?}", [5, 6, 7].iter().collect_vec());
}