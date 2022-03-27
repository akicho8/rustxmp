fn main() {
    println!("{:?}", format!("{}", "A🐲\n".escape_debug()));
    println!("{:?}", "A🐲\n".escape_debug().to_string());
    println!("{:?}", "A🐲\n".escape_debug());
}
