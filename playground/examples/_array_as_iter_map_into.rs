fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        [5_i32, 6, 7].iter().map_into::<f64>().collect::<Vec<_>>()
    );
}
