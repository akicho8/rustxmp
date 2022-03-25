fn main() {
    println!("{:?}", [5, 7, 9].binary_search_by(|e| e.cmp(&5)));
println!("{:?}", [5, 7, 9].binary_search_by(|e| e.cmp(&6)));
println!("{:?}", [5, 7, 9].binary_search_by(|e| e.cmp(&7)));
println!("{:?}", [5, 7, 9].binary_search_by(|e| e.cmp(&8)));
println!("{:?}", [5, 7, 9].binary_search_by(|e| e.cmp(&9)));
}
