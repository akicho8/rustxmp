fn main() {
    println!("{:?}", format!("{}", "A🐲\n".escape_default()));
    println!("{:?}", "A🐲\n".escape_default().to_string());
}
