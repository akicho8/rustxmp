#![feature(is_sorted)]

fn main() {
    println!("{:?}", [2_isize, -3, 4].iter().is_sorted_by_key(|e| e.abs()));
}
