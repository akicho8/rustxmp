fn main() {
    let sum = [5, 5, 5].iter().try_fold(0, |a, &e| {
        if a >= 10 {
            return None;
        }
        Some(a + e)
    });
    println!("{:?}", sum);
}
