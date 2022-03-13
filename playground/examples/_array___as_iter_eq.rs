fn main() {
    println!("{:?}", [1].iter().eq([1, 2].iter()));
    println!("{:?}", [1].iter().ne([1, 2].iter()));
    println!("{:?}", [1].iter().lt([1, 2].iter()));
    println!("{:?}", [1].iter().le([1, 2].iter()));
    println!("{:?}", [1].iter().gt([1, 2].iter()));
    println!("{:?}", [1].iter().ge([1, 2].iter()));
}
