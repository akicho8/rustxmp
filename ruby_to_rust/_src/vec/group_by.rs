#![feature(slice_group_by)]

fn main() {
    // ▼group_by: chunk 相当
println!("{:?}", [5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>());
}
