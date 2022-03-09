fn main() {
    println!(
        "{:?}",
        [(0, 5), (0, 7), (0, 9)].binary_search_by_key(&7, |&(_, e)| e)
    );
}
