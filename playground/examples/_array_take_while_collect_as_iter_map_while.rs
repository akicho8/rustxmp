fn main() {
    let it = [5, 6, 7, 8]
        .iter()
        .map_while(|&e| if e % 2 == 0 { Some(e * 10) } else { None });
    println!("{:?}", it.collect::<Vec<_>>());

    // 混乱しにくい書き方
    println!(
        "{:?}",
        [5, 6, 7, 8]
            .iter()
            .take_while(|&e| e % 2 == 0)
            .map(|e| e * 10)
            .collect::<Vec<_>>()
    );
}
