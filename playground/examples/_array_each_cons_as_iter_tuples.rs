fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        [5, 6, 7, 8].iter().tuples::<(_, _)>().collect::<Vec<_>>()
    );
}
