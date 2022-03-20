use itertools::Itertools;

fn main() {
    let v = vec![String::from("A"), String::from("B")];
    println!("{:?}", v.into_iter().update(|e| e.push_str("+")).collect::<Vec<_>>()); // >> ["A+", "B+"]

    println!("{:?}", ["A", "B"].iter().map(|e| format!("{}+", e)).collect::<Vec<_>>()) // =>
}
