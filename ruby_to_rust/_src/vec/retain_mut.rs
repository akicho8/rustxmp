#![feature(vec_retain_mut)]

fn main() {
    let mut v = vec![String::from("a"), String::from("b"), String::from("c")];
    v.retain_mut(|e| {
        if e == "b" || e == "c" {
            if e == "b" {
                *e = e.to_uppercase();
            }
            true
        } else {
            false
        }
    });
    println!("{:?}", v);
}
