fn main() {
    let it = [2, 3].iter().scan(10, |a, &e| {
        *a += e;
        Some(*a)
    });
    println!("{:?}", it.collect::<Vec<_>>());
}
