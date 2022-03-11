fn main() {
    let sum = [5, 6, 7].iter().try_fold(0, |a, &e| {
        if a >= 10 {
            return None;
        }
        Some(a + e)
    });
    println!("{:?}", sum);
}
