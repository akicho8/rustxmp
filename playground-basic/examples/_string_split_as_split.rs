fn main() {
    println!("{:?}", "a-b-c".split('-').collect::<Vec<_>>());
    println!("{:?}", "a-b-c".split(|e| e == '-').collect::<Vec<_>>());
    println!("{:?}", "a-b_c".split(['-', '_']).collect::<Vec<_>>());
}
