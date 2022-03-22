#![feature(slice_group_by)]

fn main() {
    println!(
        "{:?}",
        [5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()
    );
}
