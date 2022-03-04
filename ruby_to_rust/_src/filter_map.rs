fn main() {
    # ok() は Result の Ok を Some に変換し、Err を None にする
["1", "", "2"].iter().filter_map(|e| e.parse::<isize>().ok()).collect::<Vec<_>>());
# 分解すると map + filter 相当をしていることがわかる
["1", "", "2"].iter().map(|e| e.parse::<isize>()).filter(|e| e.is_ok()).map(|e| e.unwrap()).collect::<Vec<_>>());
}
