fn main() {
    let s = String::from("foo");
    let x = s.into_boxed_str(); // s から x に所有権移動しちゃってる
    println!("{:?}", x);
}
