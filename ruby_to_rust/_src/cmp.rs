fn main() {
    println!("{:?}", [1].iter().cmp([1, 2].iter()));
println!("{:?}", [1].iter().cmp([1].iter()));
println!("{:?}", [1, 2].iter().cmp([1].iter()));
}
