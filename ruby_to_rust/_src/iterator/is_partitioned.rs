#![feature(iter_is_partitioned)]

fn main() {
    println!(
        "{:?}",
        [2, 3, 4, 5, 6].iter().is_partitioned(|&e| e % 2 == 0)
    );
    println!(
        "{:?}",
        [2, 4, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0)
    );
    println!(
        "{:?}",
        [4, 2, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0)
    );
}
