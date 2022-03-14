#![feature(is_sorted)]

fn main() {
    println!("{:?}", [5_i32, -6, 7].is_sorted_by_key(|e| e.abs()));
}
