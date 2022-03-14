fn main() {
    let mut v = Vec::new();
    println!(
        "{:?}",
        [5, 6, 7].iter().inspect(|&e| v.push(e)).collect::<Vec<_>>()
    );
    println!("{:?}", v);
}
