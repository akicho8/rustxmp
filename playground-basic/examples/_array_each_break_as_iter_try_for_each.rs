fn main() {
    use std::ops::ControlFlow::{Break, Continue};

let r = [5, 6, 7].iter().try_for_each(|&e| {
    if e == 6 {
        return Break(e * 10)
    }
    Continue(())
});
println!("{:?}", r);
}
