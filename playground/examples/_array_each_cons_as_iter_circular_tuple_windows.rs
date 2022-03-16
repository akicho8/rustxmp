fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        [5, 6, 7]
            .iter()
            .circular_tuple_windows::<(_, _)>()
            .collect::<Vec<_>>()
    );
}
