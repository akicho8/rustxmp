fn main() {
    let s = "abcdabcd";
    println!("{:?}", s.rfind('c'));
    println!("{:?}", s.rfind("cd"));
    println!("{:?}", s.rfind(|e| e == 'c'));
}
