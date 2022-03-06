fn main() {
    let mut it = [5, 6, 7].iter();
println!("{:?}", it.by_ref().collect::<Vec<_>>());
// by_ref() がなければ次で失敗する
println!("{:?}", it);
}
