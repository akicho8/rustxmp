fn main() {
    println!(
        "{:?}",
        [[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>()
    );
}
