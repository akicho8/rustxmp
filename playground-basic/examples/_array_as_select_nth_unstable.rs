fn main() {
    let mut v = vec![7, 6, 5];
v.select_nth_unstable(0); // [0] が 5 になることだけは保証する
println!("{:?}", v);
}
