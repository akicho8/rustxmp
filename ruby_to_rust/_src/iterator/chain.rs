fn main() {
    println!(
        "{:?}",
        [2, 3].iter().chain([4, 5].iter()).collect::<Vec<_>>()
    );
}
