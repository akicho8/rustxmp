#![feature(iter_order_by)]

fn main() {
    println!("{:?}", [2, 3].iter().eq_by(&[4, 6], |&a, &b| a + a == b));
}
