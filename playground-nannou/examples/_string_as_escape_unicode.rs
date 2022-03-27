fn main() {
    println!("{:?}", format!("{}", "A🐲\n".escape_unicode()));
    println!("{:?}", "A🐲\n".escape_unicode().to_string());
}
