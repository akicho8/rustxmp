fn main() {
    use itertools::Itertools;
let v = vec![(1, 2, 3), (4, 5, 6), (7, 8, 9)];
let (a, b, c): (Vec<_>, Vec<_>, Vec<_>) = v.into_iter().multiunzip();
println!("{:?}", a);
println!("{:?}", b);
println!("{:?}", c);
}
