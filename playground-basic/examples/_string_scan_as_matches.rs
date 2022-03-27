fn main() {
    println!("{:?}", "_56_".matches(char::is_numeric).collect::<Vec<_>>());
}
