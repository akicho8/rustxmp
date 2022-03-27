fn main() {
    let v = vec![5, 6, 7, 8, 9];
let (a, b) = v.split_at(2);
println!("{:?}", a);
println!("{:?}", b);
println!("{:?}", v);
}
