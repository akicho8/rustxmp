#![feature(iter_advance_by)]

fn main() {
    let mut it = [5, 6, 7].iter();
println!("{:?}", it.advance_by(2));
println!("{:?}", it.next());
}
