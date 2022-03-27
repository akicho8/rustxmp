#![feature(iter_is_partitioned)]

fn main() {
    println!("{:?}", [6, 8, 5, 7, 9].iter().is_partitioned(|&e| e % 2 == 0));
}
