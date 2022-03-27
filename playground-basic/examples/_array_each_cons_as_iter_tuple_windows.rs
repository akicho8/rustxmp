fn main() {
    use itertools::Itertools;
println!("{:?}", [5, 6, 7, 8].iter().tuple_windows::<(_, _)>().collect::<Vec<_>>());
}
