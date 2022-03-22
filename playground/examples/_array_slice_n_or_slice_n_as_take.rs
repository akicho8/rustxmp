#![feature(slice_take)]

fn main() {
    let mut v: &[_] = &[5, 6, 7, 8, 9];
    println!("{:?}", v.take(..2));
    println!("{:?}", v);

    let mut v: &[_] = &[5, 6, 7, 8, 9];
    println!("{:?}", v.take(2..));
    println!("{:?}", v);
}
