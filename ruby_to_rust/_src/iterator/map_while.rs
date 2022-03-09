fn main() {
    let it = [3, 4, 5, 6]
        .iter()
        .map_while(|&e| if e < 5 { Some(e * 2) } else { None });
    println!("{:?}", it.collect::<Vec<_>>());
}
