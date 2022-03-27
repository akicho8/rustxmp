fn main() {
    println!("{:?}", "56foo78".trim_matches(char::is_numeric));
}
