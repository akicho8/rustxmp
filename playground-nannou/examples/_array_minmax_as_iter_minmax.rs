fn main() {
    use itertools::Itertools;
let r = [5, 6, 7].iter().minmax();
println!("{:?}", r);

// 値を取り出す
let (min, max) = r.into_option().unwrap();
println!("{:?}", min);
println!("{:?}", max);
}
