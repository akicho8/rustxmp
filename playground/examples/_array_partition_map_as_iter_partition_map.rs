fn main() {
    use itertools::Either;
    use itertools::Itertools;
    let (even, odd): (Vec<_>, Vec<_>) = [5, 6, 7, 8].iter().partition_map(|&e| {
        if e % 2 == 0 {
            Either::Left(e)
        } else {
            Either::Right(e * 2)
        }
    });
    println!("{:?}", even);
    println!("{:?}", odd);
}
