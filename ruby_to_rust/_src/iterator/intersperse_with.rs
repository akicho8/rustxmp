#![feature(iter_intersperse)]

fn main() {
    println!(
        "{:?}",
        ["a", "b", "c"]
            .iter()
            .intersperse_with(|| &"-")
            .collect::<Vec<_>>()
    );
}
