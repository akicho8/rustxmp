fn main() {
    println!("{:?}", "a-b-c-".split_terminator("-").collect::<Vec<_>>());
}
