fn main() {
    use itertools::Itertools;
println!("{:?}", [5, 6, 7].iter().find_position(|&&e| e > 5));
}
