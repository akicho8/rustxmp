#![feature(iter_partition_in_place)]

fn main() {
    let mut ary = [5, 6, 7, 8, 9];
    let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
    println!("{:?}", index);
    println!("{:?}", ary);
    println!("{:?}", ary[..index].iter().collect::<Vec<_>>());
    println!("{:?}", ary[index..].iter().collect::<Vec<_>>());
}
