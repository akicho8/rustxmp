fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        vec![5, 6, 7]
            .into_iter()
            .map_into::<f64>()
            .collect::<Vec<_>>()
    );
}
