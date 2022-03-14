fn main() {
    println!(
        "{:?}",
        [[5, 6], [7, 8]].iter().flatten().collect::<Vec<_>>()
    );
}
