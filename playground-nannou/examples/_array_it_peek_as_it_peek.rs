fn main() {
    let mut it = [5, 6, 7].iter().peekable();
println!("{:?}", it.next());
println!("{:?}", it.peek());
println!("{:?}", it.next());
}
