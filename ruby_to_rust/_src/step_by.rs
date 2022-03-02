fn main() {
    println!("{:?}", [2, 3, 4].iter().step_by(2).collect::<Vec<_>>());
}
