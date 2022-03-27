fn main() {
    println!("{:?}", " a\r\n b　c\n".split_whitespace().collect::<Vec<_>>());
}
