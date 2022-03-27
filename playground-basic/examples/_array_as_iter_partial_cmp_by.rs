#![feature(iter_order_by)]

fn main() {
    println!("{:?}", [5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)));
}
