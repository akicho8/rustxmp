fn main() {
    println!(
        "{:?}",
        "foo56foo78"
            .match_indices(char::is_numeric)
            .collect::<Vec<_>>()
    );
}
