use itertools::Itertools;

fn main() {
    println!("{:?}", vec![5, 6, 7].into_iter().map_into::<f64>().collect::<Vec<_>>());
    println!("{:?}", vec![5.5_f64, 5.6].into_iter().map_into::<i32>().collect::<Vec<_>>());
}
