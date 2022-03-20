fn main() {
    use itertools::Itertools;
    if let Some((a, b)) = [5, 6, 7, 8].iter().next_tuple() {
        println!("{:?}", a);
        println!("{:?}", b);
    }

    println!("{:?}", [5, 6, 7, 8].get(..3));
    println!("{:?}", [5, 6, 7, 8].iter().next_tuple::<(_, _, _)>());
}
