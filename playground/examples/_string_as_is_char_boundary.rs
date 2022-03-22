fn main() {
    let s = String::from("A🧡B");
    println!("{:?}", s.is_char_boundary(0));
    println!("{:?}", s.is_char_boundary(1));
    println!("{:?}", s.is_char_boundary(2));
    println!("{:?}", s.is_char_boundary(3));
    println!("{:?}", s.is_char_boundary(4));
    println!("{:?}", s.is_char_boundary(5));
    println!("{:?}", s.is_char_boundary(6));
}
