fn main() {
    struct Foo {
    counter: isize,
}

// カウンタが偶数のときだけその値を返す
impl Iterator for Foo {
    type Item = isize;

    fn next(&mut self) -> Option<isize> {
        let val = self.counter;
        self.counter += 1;
        if val % 2 == 0 {
            Some(val)
        } else {
            None
        }
    }
}

let mut it = Foo { counter: 0 };
println!("{:?}", it.next());
println!("{:?}", it.next());
println!("{:?}", it.next());
println!("{:?}", it.next());
let mut it = it.fuse();
println!("{:?}", it.next());
println!("{:?}", it.next());
println!("{:?}", it.next());
}
