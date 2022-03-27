fn main() {
    use itertools::Itertools;
let mut c = 0;
println!("{:?}", [7_isize, -6, 5].iter().sorted_by_key(|&e| { c += 1; e.abs() }).collect::<Vec<_>>());
println!("{:?}", c);
}
