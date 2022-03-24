fn main() {
    use std::mem;
    let s = String::from("foo");
    let mut s = mem::ManuallyDrop::new(s);
    println!("{:?}", s);
    let ptr = s.as_mut_ptr();
    let len = s.len();
    let cap = s.capacity();
    println!("{:?}", ptr);
    println!("{:?}", len);
    println!("{:?}", cap);
    unsafe {
        let s = String::from_raw_parts(ptr, len, cap);
        println!("{:?}", s);
    }
}
