fn main() {
    println!(
        "{:?}",
        [5, 6, 7, 8]
            .iter()
            .skip_while(|&&e| e < 7)
            .collect::<Vec<_>>()
    );
}
