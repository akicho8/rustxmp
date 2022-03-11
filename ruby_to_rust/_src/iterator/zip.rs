fn main() {
    println!(
        "{:?}",
        [5, 6, 7].iter().zip([7, 8].iter()).collect::<Vec<_>>()
    );
}
