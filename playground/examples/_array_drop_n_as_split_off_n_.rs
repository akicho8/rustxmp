fn main() {
    let mut v = vec![5, 6, 7, 8, 9];
let r = v.split_off(2);
println!("{:?}", r);
println!("{:?}", v);
}
