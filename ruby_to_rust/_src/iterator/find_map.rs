fn main() {
    // ok() は Result の Ok を Some に変換し、Err を None にする
    println!(
        "{:?}",
        ["", "5", "", "6"]
            .iter()
            .find_map(|e| e.parse::<isize>().ok())
    );
}
