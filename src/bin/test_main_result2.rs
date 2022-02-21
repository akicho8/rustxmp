use std::fs::File;
use std::io::{BufRead, BufReader};

fn main() -> std::io::Result<()> {
    let file = File::open("README.org")?;
    for line in BufReader::new(file).lines() {
        println!("{:?}", line?);
    }
    Ok(())
}
