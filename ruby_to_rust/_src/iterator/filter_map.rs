fn main() {
    let r = [5, 6, 7, 8]
        .iter()
        .filter_map(|&e| if e % 2 == 0 { Some(e * 10) } else { None });
    println!("{:?}", r.collect::<Vec<_>>());

    // 混乱しにくい書き方
    println!(
        "{:?}",
        [5, 6, 7, 8]
            .iter()
            .filter(|&e| e % 2 == 0)
            .map(|e| e * 10)
            .collect::<Vec<_>>()
    );
}
