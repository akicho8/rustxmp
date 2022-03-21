fn main() {
    let mut x = String::from("abc");
    let s = x.as_mut_str(); // let mut と書かなくていいのかな？
    s.make_ascii_uppercase();
    println!("{:?}", s);

    // これと同じだけど、どういうこと？？？
    let mut s = String::from("abc");
    s.make_ascii_uppercase();
    println!("{:?}", s);
}
