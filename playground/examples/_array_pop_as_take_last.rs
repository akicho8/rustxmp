#![feature(slice_take)]

fn main() {
    let mut v: &[_] = &[5, 6, 7];
    println!("{:?}", v.take_last());
    println!("{:?}", v);
}
