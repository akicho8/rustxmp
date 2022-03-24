fn main() {
    // truncate した部分を返したりはしない
    let mut s = String::from("foobar");
    println!("{:?}", s.truncate(3));
    println!("{:?}", s);

    // パニックになる
    // let mut s = String::from("A🥑B");
    // s.truncate(2)
}
