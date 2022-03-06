// -*- compile-command: "rustc main.rs && ./main" -*-

#![feature(iter_intersperse)]
#![feature(iter_partition_in_place)]
#![feature(iter_is_partitioned)]
#![feature(iter_order_by)]
#![feature(is_sorted)]
#![feature(iterator_try_reduce)]
#![feature(iter_advance_by)]

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

    // println!("{:?}", [5, 6, 7, 8].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>());
    // println!("{:?}", [5, 6, 7, 8].iter().filter_map(|&e| e % 2 == 0).collect::<Vec<_>>());

    // let a = ["1", "two", "NaN", "four", "5"];
    // let mut iter = a.iter().map(|s| s.parse()).filter(|s| s.is_ok()).map(|s| s.unwrap());
    // assert_eq!(iter.next(), Some(1));
    // assert_eq!(iter.next(), Some(5));
    // assert_eq!(iter.next(), None);

    // let s = "1";
    // println!("{:?}", s.parse::<isize>().ok());
    // let s = vec![Some(1), None, Some(2), None];
    // println!("{:?}", ["1", "", "2"].iter().filter_map(|e| e.parse::<isize>().ok()).collect::<Vec<_>>());
    // println!("{:?}", ["1", "", "2"].iter().map(|e| e.parse::<isize>()).filter(|e| e.is_ok()).map(|e| e.unwrap()).collect::<Vec<_>>());

    // println!("{:?}", [5, 6, 7, 8].iter().skip_while(|&&e| e < 7).collect::<Vec<_>>());
    // println!("{:?}", [5, 6, 7, 8].iter().take_while(|&&e| e < 7).collect::<Vec<_>>());
    // println!("{:?}", [5, 6, 7, 8].iter().skip(2).collect::<Vec<_>>());
    // println!("{:?}", [5, 6, 7, 8].iter().take(2).collect::<Vec<_>>());

    // println!("{:?}", ["1", "", "2"].iter().find_map(|e| e.parse::<isize>().ok()));
    // println!("{:?}", ["1", "", "2"].iter().map(|e| e.parse::<isize>()).find(|e| e.is_ok()).map(|e| e.unwrap()));

    // println!("{:?}", [1].iter().eq([1, 2].iter()));

    // println!("{:?}", [3, 4].iter().cloned().collect::<Vec<_>>());
    // println!("{:?}", [3, 4].iter().map(|&e| e).collect::<Vec<_>>());
    //
    // println!("{:?}", [3, 4].iter().copied().collect::<Vec<_>>());
    // println!("{:?}", [3, 4].iter().map(|&e| e).collect::<Vec<_>>());

    // println!("{:?}", [2, 3].iter().eq_by(&[4, 6], |&a, &b| a + a == b));

    // let it = [2, 3].iter().scan(10, |a, &e| {
    //     *a += e;
    //     Some(*a)
    // });
    // println!("{:?}", it.collect::<Vec<_>>());

    // println!("{:?}", [[2, 3], [4, 5]].iter().flatten().collect::<Vec<_>>());
    // println!("{:?}", [[2, 3], [4, 5]].iter().flat_map(|e| e).collect::<Vec<_>>());
    // println!("{:?}", [[[2,1], [3,1]], [[2,1], [3,1]]].iter().flatten().collect::<Vec<_>>());

    // println!("{:?}", [5, 5, 5].iter().try_fold(0, |a, &e| Some(a + e)));
    //
    // let sum = [5, 5, 5].iter().try_fold(0, |a, &e| {
    //     if a >= 10 {
    //         return None
    //     }
    //     Some(a + e)
    // });
    // println!("{:?}", sum);

    // use std::ops::ControlFlow::{Break, Continue};
    // let r = ["a", "b", "c"].iter().try_for_each(|&e| {
    //     if e == "b" {
    //         return Break(e)
    //     }
    //     Continue(())
    // });
    // println!("{:?}", r);

    // println!("{:?}", [2, 3, 4].iter().is_sorted());
    // println!("{:?}", );
    // println!("{:?}", 1.partial_cmp(&2));
    // println!("{:?}", 1.cmp(&2));
    // println!("{:?}", [2_isize, -3, 4].iter().is_sorted_by_key(|e| e.abs()));

    // println!("{:?}", [5, 6].iter().cmp([5, 6].iter()));
    // println!("{:?}", [5, 6].iter().cmp_by(&[5, 6], |&a, &b| a.cmp(&b)));
    //
    // println!("{:?}", [5, 6].iter().partial_cmp([5, 6].iter()));
    // println!("{:?}", [5, 6].iter().partial_cmp_by(&[5, 6], |&a, &b| a.partial_cmp(&b)));

    // let v = vec![1, 2, 3, 4, 5];
    // let sum = v.into_iter().reduce(|x, y| x + y).unwrap();
    // println!("{}", sum); // 15
    //
    // // 要素1個
    // let v = vec![1];
    // let sum = v.into_iter().reduce(|x, y| x + y).unwrap();
    // println!("{}", sum); // 1
    //
    // // 要素無し
    // let v = vec![0; 0];
    // let sum = v.into_iter().reduce(|x, y| x + y);
    // println!("{:?}", sum); // None

    // // println!("{:?}", [5_isize, 6].iter().try_reduce(|x, y| x.checked_add(&y)));
    // println!("{:?}", 1_isize.checked_add(2));
    // println!("{:?}", vec![5, 6].into_iter().reduce(|a, e| a + e));
    // println!("{:?}", vec![5, 6].into_iter().try_reduce(|a, e| Some(a + e)));

    // let it = ["a", "b", "c"].iter();
    // println!("{:?}", it.size_hint());

    // let mut it = [5, 6, 7, 8].iter();
    // println!("{:?}", it.advance_by(2));
    // println!("{:?}", it.next());

    // println!("{:?}", [3, 4].iter().map_while(|&e| Some(e)).collect::<Vec<_>>());
    // println!("{:?}", [3, 4, 5].iter().map_while(|&e| if e < 4 { Some(e) } else { Option::<isize>::None }).collect::<Vec<_>>());

    // let it = [3, 4, 5, 6].iter().map_while(|&e| {
    //     if e < 5 {
    //         Some(e * 2)
    //     } else {
    //         None
    //     }
    // });
    // println!("{:?}", it.collect::<Vec<_>>());

    let mut it = [5, 6, 7].iter();
    println!("{:?}", it.by_ref().collect::<Vec<_>>());
    println!("{:?}", it);
}
