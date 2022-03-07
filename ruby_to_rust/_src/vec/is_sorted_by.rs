#![feature(is_sorted)]

fn main() {
    // ▼is_sorted_by: ?
println!("{:?}", [5, 6, 7].is_sorted_by(|a, b| a.partial_cmp(b)));
}
