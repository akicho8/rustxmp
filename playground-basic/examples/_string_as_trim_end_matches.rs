fn main() {
    println!("{:?}", "56foo78".trim_end_matches(char::is_numeric));
}
