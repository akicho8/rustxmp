fn main() {
    println!("{:?}", [2, 3, 4].iter().cmp([2, 3, 4].iter()) == std::cmp::Ordering::Equal);
}
