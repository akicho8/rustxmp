fn main() {
    println!(
        "{:?}",
        String::from("Aあ🐲").char_indices().collect::<Vec<_>>()
    );
}
