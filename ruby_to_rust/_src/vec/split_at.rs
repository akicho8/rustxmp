fn main() {
    // ▼split_at: ?
let v = vec![5, 6, 7, 8];
let (left, right) = v.split_at(2);
println!("{:?}", left);
println!("{:?}", right);
println!("{:?}", v);
}
