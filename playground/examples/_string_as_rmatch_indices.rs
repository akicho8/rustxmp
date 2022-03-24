fn main() {
    println!(
        "{:?}",
        "_56_".rmatch_indices(char::is_numeric).collect::<Vec<_>>()
    );
}
