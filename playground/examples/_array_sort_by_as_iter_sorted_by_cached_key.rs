fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        [7, 6, 5]
            .iter()
            .sorted_by_cached_key(|&e| e)
            .collect::<Vec<_>>()
    );
}
