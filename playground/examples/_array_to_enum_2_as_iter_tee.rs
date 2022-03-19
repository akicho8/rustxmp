fn main() {
    use itertools::Itertools;
    let (a, b) = [5, 6, 7].iter().tee();
    println!("{:?}", a.collect::<Vec<_>>());
    println!("{:?}", b.collect::<Vec<_>>());
}
