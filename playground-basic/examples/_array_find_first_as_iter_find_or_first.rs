fn main() {
    use itertools::Itertools;
println!("{:?}", [5, 6, 7].iter().find_or_first(|&&e| e == 6));
println!("{:?}", [5, 6, 7].iter().find_or_first(|&&e| e == 0));
}
