#[allow(unused_variables)]
fn main() {
    let some_value = Some(5);
    let none_value: Option<isize> = None;
    println!("{:?}", none_value.is_none());
}
