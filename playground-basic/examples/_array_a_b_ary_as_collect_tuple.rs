fn main() {
    use itertools::Itertools;
println!("{:?}", [5].iter().collect_tuple::<(_, _)>());
println!("{:?}", [5, 6].iter().collect_tuple::<(_, _)>());
println!("{:?}", [5, 6, 7].iter().collect_tuple::<(_, _)>());
}
