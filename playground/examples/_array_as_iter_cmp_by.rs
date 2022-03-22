#![feature(iter_order_by)]

fn main() {
    println!("{:?}", [5, 6].iter().cmp_by(&[5, 6], |&a, &b| a.cmp(&b)));
}
