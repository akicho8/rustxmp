fn main() {
    let it = [6, 6, 7, 6]
        .iter()
        .map_while(|&e| if e % 2 == 0 { Some(e * 10) } else { None });
    println!("{:?}", it.collect::<Vec<_>>());

    // 混乱しにくい書き方
    println!(
        "{:?}",
        [6, 6, 7, 6]
            .iter()
            .take_while(|&e| e % 2 == 0)
            .map(|e| e * 10)
            .collect::<Vec<_>>()
    );
}
