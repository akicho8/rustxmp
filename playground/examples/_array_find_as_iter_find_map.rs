fn main() {
    let r = [5, 6, 7, 8].iter().find_map(|&e| {
    if e % 2 == 0 {
       Some(e * 10)
    } else {
       None
    }
});
println!("{:?}", r);

// 混乱しにくい書き方
if let Some(v) = [5, 6, 7, 8].iter().find(|&e| e % 2 == 0) {
println!("{:?}",     v * 10);
}
}
