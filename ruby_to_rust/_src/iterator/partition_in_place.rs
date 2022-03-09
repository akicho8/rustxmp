#![feature(iter_partition_in_place)]

fn main() {
    let mut ary = [2, 3, 4, 5, 6];
    let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
    println!("{:?}", index);
    println!("{:?}", ary);
    println!("{:?}", ary[..index].iter().collect::<Vec<_>>());
    println!("{:?}", ary[index..].iter().collect::<Vec<_>>());
}
