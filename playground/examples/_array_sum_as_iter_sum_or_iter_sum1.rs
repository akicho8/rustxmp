fn main() {
    println!("{:?}", [5, 6, 7].iter().sum::<isize>());
    println!("{:?}", [].iter().sum::<isize>());

    use itertools::Itertools;
    println!("{:?}", [5, 6, 7].iter().sum1::<isize>());
    println!("{:?}", [].iter().sum1::<isize>());
}
