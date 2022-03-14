fn main() {
    use itertools::Itertools;
    println!(
        "{:?}",
        format!(
            "{}",
            [1.5, 1.5]
                .iter()
                .format_with("-", |e, f| f(&format_args!("({:.0})", e)))
        )
    );
}
