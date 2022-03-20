fn main() {
    let ok_v: Option<i32> = Some(5);
    let v = ok_v.and_then(|e| Some(e * 2));
    println!("{:?}", v);   // >> Some(10)

    let v: Option<i32> = ok_v.and_then(|_| None);
    println!("{:?}", v);   // >> Some(10)

    println!("{:?}", ok_v.and_then::<i32, _>(|_| None));   // >> Some(10)
}
