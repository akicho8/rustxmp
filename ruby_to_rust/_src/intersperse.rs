#![feature(iter_intersperse)]

fn main() {
    println!("{:?}", ["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>());
}
