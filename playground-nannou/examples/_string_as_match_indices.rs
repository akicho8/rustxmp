fn main() {
    println!("{:?}", "_56_".match_indices(char::is_numeric).collect::<Vec<_>>());
}
