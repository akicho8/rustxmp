fn main() {
    println!("{:?}", "foo-bar-baz".splitn(2, "-").collect::<Vec<_>>());
}
