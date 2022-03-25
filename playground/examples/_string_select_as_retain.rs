fn main() {
    let mut s = String::from("f_o_o");
s.retain(|e| e != '_'); // "_" では文字列を表すのでコンパイルエラー
println!("{:?}", s);
}
