fn main() {
    println!(
        "{:?}",
        [5, 6].iter().chain([7, 8].iter()).collect::<Vec<_>>()
    );
}
