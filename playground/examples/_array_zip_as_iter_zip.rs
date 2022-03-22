fn main() {
    println!(
        "{:?}",
        [100, 200]
            .iter()
            .zip([5, 6, 7, 8].iter())
            .collect::<Vec<_>>()
    );
    println!(
        "{:?}",
        [5, 6, 7, 8]
            .iter()
            .zip([100, 200].iter())
            .collect::<Vec<_>>()
    );
}
