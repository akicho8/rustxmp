fn main() {
    let mut s = String::from("foo");
    println!("{:?}", s.as_mut_ptr());
}
