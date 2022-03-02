// -*- compile-command: "rustc main.rs && ./main" -*-

#![feature(iter_intersperse)]
#![feature(iter_partition_in_place)]
#![feature(iter_is_partitioned)]

fn main() {

    // // println!("{:?}", [-3_i32, 0, 1, 5, -10].iter().max_by_key(|x| x.abs()));
    //
    // // let mut it = [2, 3].iter();
    // // println!("{:?}", it.next()); // Some(2)
    // // println!("{:?}", it.next()); // Some(3)
    // // println!("{:?}", it.next()); // None
    // //
    // // // 残りのサイズを返す？？？
    // // let mut it = ["a", "b"].iter();
    // // println!("{:?}", it.size_hint()); // (2, Some(2))
    // // println!("{:?}", it.next());      // Some("a")
    // // println!("{:?}", it.size_hint()); // (1, Some(1))
    // // println!("{:?}", it.next());      // Some("b")
    // // println!("{:?}", it.size_hint()); // (0, Some(0))
    // // println!("{:?}", it.next());      // None
    // // println!("{:?}", it.size_hint()); // (0, Some(0))
    // // println!("{:?}", it.next());      // None
    // // println!("{:?}", it.size_hint()); // (0, Some(0))
    // //
    // // (0..5).map(|e|e*2).enumerate().for_each(|(i, e)| println!("{:?} {:?}", i, e));
    //
    // println!("{:?}", [2, 3].iter());
    // println!("{:?}", [2, 3].iter().collect::<Vec<_>>());
    // println!("{:?}", [2, 3].iter().rev().collect::<Vec<_>>());
    // println!("{:?}", [2, 3].iter().map(|e| e * 2).collect::<Vec<_>>());
    // println!("{:?}", [2, 3].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>());
    // println!("{:?}", [2, 3, 4].iter().step_by(2).collect::<Vec<_>>());
    // println!("{:?}", [2, 3].iter().zip([4, 5].iter()).collect::<Vec<_>>());
    // println!("{:?}", [2, 3].iter().enumerate().collect::<Vec<_>>());
    // println!("{:?}", [2, 3].iter().chain([4, 5].iter()).collect::<Vec<_>>());
    //
    // println!("{:?}", [2, 3, 4].iter().count());
    // println!("{:?}", [2, 3, 4].iter().fold(0, |a, e| a + e));
    // println!("{:?}", [2, 3, 4].iter().sum::<isize>());
    // println!("{:?}", [2, 3, 4].iter().product::<isize>());
    // println!("{:?}", [2, 3, 4].iter().all(|&e| e >= 0));
    // println!("{:?}", [2, 3, 4].iter().any(|&e| e >= 4));
    // println!("{:?}", [2, 3, 4].iter().find(|&&e| e == 3));
    // println!("{:?}", [2, 3, 2].iter().position(|&e| e == 2));
    // println!("{:?}", [2, 3, 2].iter().rposition(|&e| e == 2));
    // println!("{:?}", [2, 3, 4].iter().cmp([2, 3, 4].iter()));
    // println!("{:?}", [2, 3, 4].iter().next());
    //
    // println!("{:?}", [2, 3, 4].iter().nth(0));
    // println!("{:?}", [2, 3, 4].iter().last());
    //
    // println!("{:?}", [2_i32, 3, -4].iter().max());
    // println!("{:?}", [2_i32, 3, -4].iter().max_by_key(|e| e.abs()));
    // println!("{:?}", [2_i32, 3, -4].iter().max_by(|a, b|a.cmp(b)));
    //
    // println!("{:?}", [2_i32, 3, -4].iter().min());
    // println!("{:?}", [2_i32, 3, -4].iter().min_by_key(|e| e.abs()));
    // println!("{:?}", [2_i32, 3, -4].iter().min_by(|a, b| a.cmp(b)));
    //
    // println!("{:?}", ["", "1"].iter().find_map(|e|e.parse::<i32>().ok()));
    //
    // let (even, odd): (Vec<i32>, Vec<i32>) = [2, 3, 4].iter().partition(|&e|e % 2 == 0);
    // println!("{:?}", even);
    // println!("{:?}", odd);
    //
    // // [[1, 2], [3, 4]].transpose      # => [[1, 3], [2, 4]]
    // let v = [(1, 2), (3, 4)];
    // let (left, right): (Vec<_>, Vec<_>) = v.iter().cloned().unzip();
    // println!("{:?}", left);     // [1, 3]
    // println!("{:?}", right);    // [2, 4]
    //
    // // println!("{:?}", [2, 3, 4].iter().reduce(|a, e| a + e));
    //
    // println!("{:?}", [[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>());
    // println!("{:?}", [[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>());

    // #![feature(iter_intersperse)]

    // ["a", "b", "c"].iter().for_each(|e| {
    //     println!("{:?}", e);
    // })

    // println!("{:?}", ["a", "b", "c"].iter().intersperse(&"-").collect::<Vec<_>>());
    // println!("{:?}", ["a", "b", "c"].iter().intersperse_with(||&"-").collect::<Vec<_>>());

    // let mut it = ["a", "b"].iter().peekable();
    // println!("{:?}", it.next());
    // println!("{:?}", it.peek());
    // println!("{:?}", it.next());

    // println!("{:?}", [5, 6, 7, 8].iter().take(2).collect::<Vec<_>>());
    // println!("{:?}", ["a", "b", "c"].iter().take(2).collect::<Vec<_>>());
    // println!("{:?}", [1, 2, 3].take(2).collect::<Vec<_>>());
    // println!("{:?}", ["a", "b"].iter().inspect(|e| println!("{:?}", e)).collect::<Vec<_>>());
    // println!("{:?}", (0..).take(2).collect::<Vec<_>>());

    // println!("{:?}", [5, 6, 7, 8].iter().take_while(|e| **e < 7).collect::<Vec<_>>());

    // let it = ["a", "b", "c"].iter();
    // let mut it = it.skip(2);
    // println!("{:?}", it.next());

    // let mut it = ["a", "b"].iter();
    // println!("{:?}", it.next());
    // let mut it = it.fuse();
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());

    // struct Foo {
    //     counter: i32,
    // }
    //
    // impl Iterator for Foo {
    //     type Item = i32;
    //
    //     fn next(&mut self) -> Option<i32> {
    //         let val = self.counter;
    //         self.counter += 1;
    //         if val % 2 == 0 {
    //             Some(val)
    //         } else {
    //             None
    //         }
    //     }
    // }
    //
    // let mut it = Foo { counter: 0 };
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());
    // let mut it = it.fuse();
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());
    // println!("{:?}", it.next());

    // let mut v = Vec::new();
    // println!("{:?}", ["a", "b"].iter().inspect(|&e| v.push(e)).collect::<Vec<_>>());
    // println!("{:?}", v);
    //
    // println!("{:?}", [1].iter().first());

    // [5, 6, 7, 8].partition(&:even?) # => [[6, 8], [5, 7]]
    // let (even, odd): (Vec<isize>, Vec<isize>) = [5, 6, 7, 8].iter().partition(|&e| e % 2 == 0);
    // println!("{:?}", even);
    // println!("{:?}", odd);

    // let mut ary = [2, 3, 4, 5, 6];
    // let index = ary.iter_mut().partition_in_place(|&e| e % 2 == 0);
    // println!("{:?}", index);
    // println!("{:?}", ary);
    // println!("{:?}", ary[..index].iter().collect::<Vec<_>>());
    // println!("{:?}", ary[index..].iter().collect::<Vec<_>>());

    // println!("{:?}", i);
    // println!("{:?}", a[..i].iter().all(|&n| n % 2 == 0));

    // println!("{:?}", [2, 3, 4, 5, 6].iter().is_partitioned(|&e| e % 2 == 0));
    // println!("{:?}", [2, 4, 6, 3, 5].iter().is_partitioned(|&e| e % 2 == 0));

    // let mut it = ['a', 'b', 'c', 'd'].iter();
    // println!("{:?}", it.nth(1));
    // println!("{:?}", it.nth(1));
    // println!("{:?}", it.nth(1));
    //
    // println!("{:?}", [1].get(0));

    // let a = [1, 2, 3];
    // let b: Vec<_> = a.iter().collect();
    // println!("{:?}", b);
    // println!("{:?}", a);
}
