fn main() {
    struct Foo {
        counter: i32,
    }

    // 偶数番目だけ番号を返す
    impl Iterator for Foo {
        type Item = i32;

        fn next(&mut self) -> Option<i32> {
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
