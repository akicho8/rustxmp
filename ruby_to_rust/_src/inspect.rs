fn main() {
    let mut v = Vec::new();
    println!("{:?}", ["a", "b"].iter().inspect(|&e| v.push(e)).collect::<Vec<_>>());
    println!("{:?}", v);
}
