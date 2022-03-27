fn main() {
    println!("{:?}", "567".parse::<isize>());

let v: isize = "567".parse().unwrap();
println!("{:?}", v);
}
