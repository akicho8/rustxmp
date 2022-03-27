fn main() {
    println!("{:?}", "56foo78".trim_start_matches(char::is_numeric));
}
