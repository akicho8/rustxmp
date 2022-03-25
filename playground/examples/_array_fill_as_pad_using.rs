fn main() {
    use itertools::Itertools;
println!("{:?}", (100..=102).pad_using(6, |i| i * 2).collect::<Vec<_>>());
}
