#![feature(iterator_try_reduce)]

fn main() {
    let r = vec![5, 6, 7].into_iter().try_reduce(|a, e| {
        if a >= 10 {
            return None;
        }
        Some(a + e)
    });
    println!("{:?}", r);
}
