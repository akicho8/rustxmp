fn main() {
    use itertools::Itertools;
    let r = [7, 6, 5].iter().minmax();
    println!("{:?}", r);

    // 値を取り出す
    let (min, max) = r.into_option().unwrap();
    println!("{:?}", min);
    println!("{:?}", max);
}
