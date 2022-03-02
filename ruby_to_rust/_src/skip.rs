fn main() {
    let it = ["a", "b", "c"].iter();
let mut it = it.skip(2);
println!("{:?}", it.next());
}
