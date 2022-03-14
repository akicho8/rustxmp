fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        [5, 6, 6, 7].iter().unique_by(|&e| e).collect::<Vec<_>>()
    );
}
