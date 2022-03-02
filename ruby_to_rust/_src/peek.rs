fn main() {
    let mut it = ["a", "b"].iter().peekable();
println!("{:?}", it.next());
println!("{:?}", it.peek());
println!("{:?}", it.next());
}
