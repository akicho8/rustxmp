fn main() {
    let mut s = String::from("abc");
    let v = unsafe { s.as_mut_vec() };
    println!("{:?}", v);
}
