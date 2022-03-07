fn main() {
    // ▼swap_remove(i): iの位置を削除して詰める。O(1) なかわりに順序が変わる。最後の要素が来る
let mut v = vec![5, 6, 7, 8];
println!("{:?}", v.swap_remove(0));
println!("{:?}", v);
}
