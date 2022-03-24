fn main() {
    println!("{:?}", "a-b-c-".rsplit_terminator("-").collect::<Vec<_>>());
}
