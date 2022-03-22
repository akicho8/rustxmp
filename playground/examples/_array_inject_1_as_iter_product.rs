fn main() {
    println!("{:?}", [5, 2, 10].iter().product::<isize>());
    println!("{:?}", [].iter().product::<isize>());
}
