fn main() {
    let s = "abcdabcd";
    println!("{:?}", s.find('c'));
    println!("{:?}", s.find("cd"));
    println!("{:?}", s.find(|e| e == 'c'));
}
