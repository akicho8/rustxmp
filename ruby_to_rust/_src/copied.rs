fn main() {
    println!("{:?}", [3, 4].iter().copied().collect::<Vec<_>>());
// ↓これと同じことらしい。って cloned のときと同じやん
println!("{:?}", [3, 4].iter().map(|&e| e).collect::<Vec<_>>());
}
