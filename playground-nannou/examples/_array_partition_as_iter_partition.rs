fn main() {
    let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
println!("{:?}", even);
println!("{:?}", odd);
}
