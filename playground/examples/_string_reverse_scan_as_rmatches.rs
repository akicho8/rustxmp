fn main() {
    println!(
        "{:?}",
        "_56_".rmatches(char::is_numeric).collect::<Vec<_>>()
    );
}
