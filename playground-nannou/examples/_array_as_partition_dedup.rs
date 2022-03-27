#![feature(slice_partition_dedup)]

fn main() {
    let mut v = [5, 5, 6, 7, 7, 6, 5, 5];
let (dedup, duplicates) = v.partition_dedup();
println!("{:?}", dedup);
println!("{:?}", duplicates);
println!("{:?}", v);
}
