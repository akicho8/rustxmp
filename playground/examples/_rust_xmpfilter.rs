#[allow(unused_variables)]
fn main() {
    let ok_value: Result<i32, &str> = Ok(5);
    let ng_value: Result<i32, &str> = Err("失敗");
    let ok2_value: Result<i32, &str> = Ok(20);
    println!("{:?}", ng_value.ok());
}
