use itertools::Itertools;

fn main() {
    let (it1, it2) = [5, 6, 7].iter().tee();
    println!("{:?}", it1.collect::<Vec<_>>());
    println!("{:?}", it2.collect::<Vec<_>>());
}
