use itertools::Itertools;

fn main() {
    println!("{:?}", vec![5, 6, 7].iter().powerset().collect::<Vec<_>>());
}
