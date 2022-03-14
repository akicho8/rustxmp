fn main() {
    let v = vec![5, 6, 7];
    println!("{:?}", v.get((v.len() - 2)..));
}
