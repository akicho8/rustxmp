fn main() {
    let mut a = vec![5, 6, 7, 8];
    let b = a.split_off(2);
    println!("{:?}", a);
    println!("{:?}", b);
}
