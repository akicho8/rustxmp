fn main() {
    println!("{:?}", "a-b-c".split_inclusive('-').collect::<Vec<_>>());
}
