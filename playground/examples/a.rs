use itertools::Itertools;

fn main() {
    let it = (100..=102).pad_using(6, |i| i * 2);
    println!("{:?}", it.collect::<Vec<_>>());
}
