fn main() {
    use itertools::Itertools;
    println!("{:?}", vec![Ok(5), Err(6), Ok(7)].into_iter().map_ok(|e| e * 2).collect::<Vec<_>>());
}
