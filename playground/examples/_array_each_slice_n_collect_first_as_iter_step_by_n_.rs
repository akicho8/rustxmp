fn main() {
    println!("{:?}", [5, 6, 7, 8].iter().step_by(2).collect::<Vec<_>>());
}
