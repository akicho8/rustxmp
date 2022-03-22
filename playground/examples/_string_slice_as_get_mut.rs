fn main() {
    let mut s = String::from("foo");
    let s = s.get_mut(0..=1);
    let s = s.map(|e| {
        // e は "fo"
        e.make_ascii_uppercase();
        &*e
    });
    println!("{:?}", s);
}
