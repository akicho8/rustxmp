fn main() {
    println!("{:?}", [5, 7, 9].binary_search_by(|e| e.cmp(&7)));
}
