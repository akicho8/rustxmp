fn main() {
    use itertools::Itertools;
    println!("{:?}", [5, 6, 7].iter().at_most_one());
    println!("{:?}", [5].iter().at_most_one());
    println!("{:?}", Vec::<isize>::new().iter().at_most_one());
}
