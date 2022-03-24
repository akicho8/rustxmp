fn main() {
    println!("{:?}", "foo-bar-baz".rsplitn(2, "-").collect::<Vec<_>>());
}
