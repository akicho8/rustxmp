fn main() {
    use std::ops::ControlFlow::{Break, Continue};

let r = ["a", "b", "c"].iter().try_for_each(|&e| {
    if e == "b" {
        return Break(e)
    }
    Continue(())
});
println!("{:?}", r);
}
