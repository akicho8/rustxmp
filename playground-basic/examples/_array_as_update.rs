fn main() {
    use itertools::Itertools;
let v = vec![String::from("A"), String::from("B")];
println!("{:?}", v.into_iter().update(|e| e.push_str("+")).collect::<Vec<_>>());

// これでよくない？
println!("{:?}", ["A", "B"].iter().map(|e| format!("{}+", e)).collect::<Vec<_>>());
}
