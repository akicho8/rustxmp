fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        [7, 6, 5].iter().sorted_by(|a, b| a.cmp(b)).collect_vec()
    );
}
