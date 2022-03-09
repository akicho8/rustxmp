fn main() {
    // ok() は Result の Ok を Some に変換し、Err を None にする
    println!(
        "{:?}",
        ["", "5", "", "6"]
            .iter()
            .filter_map(|e| e.parse::<isize>().ok())
            .collect::<Vec<_>>()
    );
    // 分解すると map + filter + map 相当をしていることがわかる
    println!(
        "{:?}",
        ["", "5", "", "6"]
            .iter()
            .map(|e| e.parse::<isize>())
            .filter(|e| e.is_ok())
            .map(|e| e.unwrap())
            .collect::<Vec<_>>()
    );
}
