fn main() -> Result<(), Box<dyn std::error::Error>> {
    let s = std::fs::read_to_string("unknown.txt")?;
    println!("{:?}", s);
    Ok(())
}
