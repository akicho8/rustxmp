fn main() {
    use itertools::Itertools;
println!("{:?}", [5, 5, 6].iter().counts_by(|e| e * 2));
}
