#![feature(is_sorted)]

fn main() {
    println!(
        "{:?}",
        [2, 3, 4].iter().is_sorted_by(|a, b| a.partial_cmp(b))
    );
}
