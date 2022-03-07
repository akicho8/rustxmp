fn main() {
    // ▼append: concat
let mut a = vec![5, 6];
let mut b = vec![7, 8];
a.append(&mut b);
println!("{:?}", a);
println!("{:?}", b);
}
