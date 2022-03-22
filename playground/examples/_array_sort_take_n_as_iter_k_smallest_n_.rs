fn main() {
    use itertools::Itertools;
    println!("{:?}", [6, 7, 5].iter().k_smallest(2).collect::<Vec<_>>());
}
