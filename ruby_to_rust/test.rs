// -*- compile-command: "rustc main.rs && ./main" -*-

#![feature(iter_intersperse)]
#![feature(iter_partition_in_place)]
#![feature(iter_is_partitioned)]
#![feature(iter_order_by)]
#![feature(is_sorted)]
#![feature(iterator_try_reduce)]
#![feature(iter_advance_by)]
#![feature(slice_group_by)]
#![feature(slice_take)]
#![feature(vec_retain_mut)]
#![feature(slice_partition_dedup)]

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

    // let mut it = [5, 6, 7].iter();
    // println!("{:?}", it.by_ref().collect::<Vec<_>>());
    // println!("{:?}", it);

    // ▼with_capacity(n): 最初から n だけ確保しておく
    let v: Vec<isize> = Vec::with_capacity(3);
    println!("{:?}", v.len());
    println!("{:?}", v.capacity());

    // ▼reserve(n): 最低限 n は確保しておく
    let mut v: Vec<isize> = Vec::with_capacity(0);
    v.reserve(5);
    println!("{:?}", v.capacity() >= 5);

    // ▼reserve_exact(n): reserve よりも少なく確保する版？？？
    let mut v: Vec<isize> = Vec::with_capacity(0);
    v.reserve_exact(5);
    println!("{:?}", v.capacity() >= 5);

    // // ▼try_reserve(n): reserve の失敗するかもしれない版
    // let mut v: Vec<isize> = Vec::with_capacity(0);
    // v.try_reserve(5);
    // println!("{:?}", v.capacity() >= 5);

    // ▼swap_remove(i): iの位置を削除して詰める。O(1) なかわりに順序が変わる。最後の要素が来る
    let mut v = vec![5, 6, 7, 8];
    println!("{:?}", v.swap_remove(0)); // => 5
    println!("{:?}", v);                // => [8, 6, 7]

    // ▼remove(i): iの位置を削除して詰める。O(n) なかわりに順序は変わらない
    let mut v = vec![5, 6, 7, 8];
    println!("{:?}", v.remove(0)); // => 5
    println!("{:?}", v);           // => [6, 7, 8]

    // ▼insert(i): iの位置に入れてずらす
    let mut v = vec![5, 7, 8];
    v.insert(1, 6);
    println!("{:?}", v);           // => [5, 6, 7, 8]

    // ▼retain: select!
    let mut v = vec![-1, -1, 1, 1];
    v.retain(|&e| e > 0);
    println!("{:?}", v);           // => [1, 1]

    // ▼push: push
    let mut v = vec![5, 6];
    v.push(7);
    println!("{:?}", v);           // => [5, 6, 7]

    // ▼pop: pop
    let mut v = vec![5, 6, 7];
    println!("{:?}", v.pop());     // => Some(7)
    println!("{:?}", v);           // => [5, 6]

    // ▼append: concat
    let mut a = vec![5, 6];
    let mut b = vec![7, 8];
    a.append(&mut b);
    println!("{:?}", a);     // => [5, 6, 7, 8]
    println!("{:?}", b);     // => []

    // ▼is_empty: empty?
    let v: Vec<isize> = vec![];
    println!("{:?}", v.is_empty()); // => true

    // ▼clear: clear
    let mut v = vec![5, 6];
    v.clear();
    println!("{:?}", v);        // => []

    // ▼len: length
    let v = vec![5, 6];
    println!("{:?}", v.len());  // => 2

    // ▼split_at: ?
    let v = vec![5, 6, 7, 8];
    let (left, right) = v.split_at(2);
    println!("{:?}", left);     // => [5, 6]
    println!("{:?}", right);    // => [7, 8]
    println!("{:?}", v);        // => [5, 6, 7, 8]

    // ▼split_off: ?
    let mut a = vec![5, 6, 7, 8];
    let b = a.split_off(2);
    println!("{:?}", a);  // => [5, 6]
    println!("{:?}", b);  // => [7, 8]

    // ▼first: first
    let v = vec![5, 6, 7];
    println!("{:?}", v.first()); // => Some(5)

    // ▼last: last
    let v = vec![5, 6, 7];
    println!("{:?}", v.last()); // => Some(7)

    // ▼get: at
    let v = vec![5, 6, 7, 8];
    println!("{:?}", v.get(1));     // => Some(6)
    println!("{:?}", v.get(1..=2)); // => Some([6, 7])

    // ▼swap: ?
    let mut v = vec![5, 6, 7, 8];
    println!("{:?}", v.swap(1, 2));  // => ()
    println!("{:?}", v);             // => [5, 7, 6, 8]

    // ▼windows: each_cons(2).to_a
    let v = vec![5, 6, 7, 8];
    println!("{:?}", v.windows(2).collect::<Vec<_>>()); // => [[5, 6], [6, 7], [7, 8]]

    // ▼chunks: each_slice(2).to_a
    let v = vec![5, 6, 7, 8, 9];
    println!("{:?}", v.chunks(2).collect::<Vec<_>>()); // => [[5, 6], [7, 8], [9]]

    // ▼rchunks: ?
    let v = vec![5, 6, 7, 8, 9];
    println!("{:?}", v.rchunks(2).collect::<Vec<_>>()); // => [[8, 9], [6, 7], [5]]

    // ▼split: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    println!("{:?}", v.split(|&e| e == 0).collect::<Vec<_>>()); // => [[5, 6], [7, 8], [9]]

    // ▼split_inclusive: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    println!("{:?}", v.split_inclusive(|&e| e == 0).collect::<Vec<_>>()); // => [[5, 6, 0], [7, 8, 0], [9]]

    // ▼rsplit: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    println!("{:?}", v.rsplit(|&e| e == 0).collect::<Vec<_>>()); // => [[9], [7, 8], [5, 6]]

    // ▼splitn: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    println!("{:?}", v.splitn(2, |&e| e == 0).collect::<Vec<_>>()); // => [[5, 6], [7, 8, 0, 9]]

    // ▼rsplitn: ?
    let v = vec![5, 6, 0, 7, 8, 0, 9];
    println!("{:?}", v.rsplitn(2, |&e| e == 0).collect::<Vec<_>>()); // => [[9], [5, 6, 0, 7, 8]]

    // ▼contains: ?
    println!("{:?}", [5, 6, 7].contains(&6)); // => true

    // ▼starts_with: ?
    println!("{:?}", [5, 6, 7].starts_with(&[5, 6])); // => true

    // ▼ends_with: ?
    println!("{:?}", [5, 6, 7].ends_with(&[6, 7])); // => true

    // ▼strip_prefix: ?
    println!("{:?}", [5, 6, 7, 8].strip_prefix(&[5, 6])); // => Some([7, 8])

    // ▼strip_suffix: ?
    println!("{:?}", [5, 6, 7, 8].strip_suffix(&[7, 8])); // => Some([5, 6])

    // ▼binary_search: ?
    println!("{:?}", [5, 6, 7, 8].binary_search(&7)); // => Ok(2)

    // ▼select_nth_unstable: ?
    let mut v = vec![6, 8, 7, 5];
    v.select_nth_unstable(0);
    println!("{:?}", v); // => [5, 8, 7, 6]

    // ▼select_nth_unstable_by: ?
    let mut v = vec![6, 8, 7, 5];
    v.select_nth_unstable_by(0, |a, b| a.cmp(b));
    println!("{:?}", v); // => [5, 8, 7, 6]

    // ▼select_nth_unstable_by_key: ?
    let mut v = vec![6_i32, 8, 7, 5];
    v.select_nth_unstable_by_key(0, |e| e.abs());
    println!("{:?}", v); // => [5, 8, 7, 6]

    // ▼rotate_left: ?
    let mut v = vec![5, 6, 7];
    v.rotate_left(1);
    println!("{:?}", v); // => [6, 7, 5]

    // ▼rotate_right: ?
    let mut v = vec![5, 6, 7];
    v.rotate_right(1);
    println!("{:?}", v); // => [7, 5, 6]

    // ▼fill: ?
    let mut v = vec![5, 6, 7];
    v.fill(8);
    println!("{:?}", v);        // => [8, 8, 8]

    // ▼fill_with: ?
    let mut v = vec![5, 6, 7];
    v.fill_with(|| 8);
    println!("{:?}", v);        // => [8, 8, 8]

    // ▼sort: ?
    let mut v = vec![7, 6, 5];
    v.sort();
    println!("{:?}", v);        // => [5, 6, 7]

    // ▼sort_by: ?
    let mut v = vec![7, 6, 5];
    v.sort_by(|a, b| a.cmp(b));
    println!("{:?}", v);        // => [5, 6, 7]

    // ▼sort_by_key: ?
    let mut v = vec![7_i32, -6, 5];
    v.sort_by_key(|e| e.abs());
    println!("{:?}", v);        // => [5, -6, 7]

    // ▼sort_by_cached_key: ?
    let mut v = vec![7_i32, -6, 5];
    v.sort_by_cached_key(|e| e.abs());
    println!("{:?}", v);        // => [5, -6, 7]

    // ▼sort_unstable: ?
    let mut v = vec![6, 8, 7, 5];
    v.sort_unstable();
    println!("{:?}", v); // => [5, 6, 7, 8]

    // ▼sort_unstable_by: ?
    let mut v = vec![6, 8, 7, 5];
    v.sort_unstable_by(|a, b| a.cmp(b));
    println!("{:?}", v); // => [5, 6, 7, 8]

    // ▼sort_unstable_by_key: ?
    let mut v = vec![-6_i32, 8, -7, 5];
    v.sort_unstable_by_key(|e| e.abs());
    println!("{:?}", v); // => [5, -6, -7, 8]

    // ▼is_sorted: ?
    println!("{:?}", [5, 6, 7].is_sorted()); // => true

    // ▼is_sorted_by: ?
    println!("{:?}", [5, 6, 7].is_sorted_by(|a, b| a.partial_cmp(b))); // => true

    // ▼is_sorted_by_key: ?
    println!("{:?}", [5_i32, -6, 7].is_sorted_by_key(|e| e.abs())); // => true

    // ▼take: ?
    let mut v: &[_] = &[5, 6, 7];
    println!("{:?}", v.take(..2)); // Some([5, 6])
    println!("{:?}", v);           // [7]

    // ▼take_first: ?
    let mut v: &[_] = &[5, 6, 7];
    println!("{:?}", v.take_first()); // Some(5)
    println!("{:?}", v);              // [6, 7]

    // ▼take_last: ?
    let mut v: &[_] = &[5, 6, 7];
    println!("{:?}", v.take_last()); // Some(7)
    println!("{:?}", v);              // [5, 6]

    // // ▼is_ascii: ?
    // let mut v = vec![String::from("abc")];
    // println!("{:?}", v.is_ascii());

    // ▼to_vec: dup
    let v = vec![5, 6, 7];
    println!("{:?}", v.to_vec()); // => [5, 6, 7]

    // ▼concat:
    println!("{:?}", ["foo", "bar"].concat());     // => "foobar"
    println!("{:?}", [["foo"], ["bar"]].concat()); // => ["foo", "bar"]
    println!("{:?}", [[5, 6], [7, 8]].concat());   // => [5, 6, 7, 8]

    // ▼join
    println!("{:?}", ["foo", "bar"].join("-"));     // => "foo-bar"
    println!("{:?}", [[5, 6], [7, 8]].join(&0));   // => [5, 6, 0, 7, 8]

    // ▼group_by: chunk 相当
    println!("{:?}", [5, 6, 6, 5].group_by(|a, b| a == b).collect::<Vec<_>>()); // => [[5], [6, 6], [5]]

    // let mut v: &[_] = &[5, 6, 7, 8];
    // println!("{:?}", v.take(2)); // Some([5, 6])
    // println!("{:?}", v);           // [7]

    // println!("{:?}", [0; 0].is_empty());

    // let mut v = vec![
    //     String::from("a"),
    //     String::from("b"),
    //     String::from("c"),
    // ];
    // v.retain_mut(|e| {
    //     if e == "b" || e == "c" {
    //         if e == "b" {
    //             *e = e.to_uppercase();
    //         }
    //         true
    //     } else {
    //         false
    //     }
    // });
    // println!("{:?}", v);

    // let mut v = vec![5, 5, 6, 6, 5, 5, 5];
    // v.dedup_by_key(|e| *e);
    // println!("{:?}", v);

    // let mut v = vec![5, 5, 6, 6, 5, 5, 5];
    // v.dedup_by(|a, b| a == b);
    // println!("{:?}", v);

    // println!("{:?}", [0x41, 0x42, 0x43].is_ascii());

    // let mut v = [97, 66, 99, 68];   // "aBcD"
    // v.make_ascii_uppercase();
    // println!("{:?}", v);        // [65, 66, 67, 68]

    // let mut v = [97, 66, 99, 68];   // "aBcD"
    // v.make_ascii_lowercase();
    // println!("{:?}", v);        // [97, 98, 99, 100]

    // let v = [5, 6];
    // println!("{:?}", v.repeat(2));
    // println!("{:?}", [5, 6].repeat(2));

    // let mut slice = [5, 5, 6, 7, 7, 6, 5, 5];
    // let (dedup, duplicates) = slice.partition_dedup();
    // println!("{:?}", dedup);
    // println!("{:?}", duplicates);

    // println!("{:?}", ["a", "b"].join("-"));
    // println!("{:?}", vec![5, 6].join(0));

    // ▼fill_with: ?
    // let mut v = vec![5, 6, 7];
    // v.fill_with(|| 8);
    // println!("{:?}", v);        // => [8, 8, 8]

    // println!("{:?}", ["a", "b"].iter().enumerate().collect::<Vec<_>>());

    // let v: u8 = 0;
    // println!("{:?}", v.checked_add(300));

    // let r = vec![5, 6, 7].into_iter().try_reduce(|a, e| {
    //     if a >= 10 {
    //         return None
    //     }
    //     Some(a + e)
    // });
    // println!("{:?}", r);

    // let v = [4, 5, 6];
    // println!("{:?}", v.iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>() );
    // println!("{:?}", v);

    // let r = [5, 6, 7].iter().filter_map(|&e| {
    //     if e == 6 { None } else { Some(e) }
    // });
    // println!("{:?}", r.collect::<Vec<_>>());

    // let r = [6, 6, 6, 6].iter().find_map(|&e| {
    //     if e % 2 == 0 {
    //        Some(e * 10)
    //     } else {
    //        None
    //     }
    // });
    //
    // println!("{:?}", r);

    if let Some(v) = [5, 6, 7, 8].iter().find(|&e| e % 2 == 0) {
        println!("{:?}", v * 10);
    }
}
