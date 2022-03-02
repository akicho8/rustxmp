fn main() {
    println!("{:?}", ["a", "b", "c"].iter().take(2).collect::<Vec<_>>());
println!("{:?}", (0..).take(2).collect::<Vec<_>>());
}
