#![feature(slice_take)]

fn main() {
    // ▼take: ?
let mut v: &[_] = &[5, 6, 7];
println!("{:?}", v.take(..2));
println!("{:?}", v);
}
