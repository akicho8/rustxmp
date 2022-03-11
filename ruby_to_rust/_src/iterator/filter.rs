fn main() {
    println!(
        "{:?}",
        [4, 5, 6].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>()
    );
}
