#![feature(iterator_try_reduce)]

fn main() {
    println!(
        "{:?}",
        vec![5, 6].into_iter().try_reduce(|a, e| Some(a + e))
    );
}
