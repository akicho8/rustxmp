fn main() {
    // println!("{:?}", [-3_i32, 0, 1, 5, -10].iter().max_by_key(|x| x.abs()));

    // let mut it = [2, 3].iter();
    // println!("{:?}", it.next()); // Some(2)
    // println!("{:?}", it.next()); // Some(3)
    // println!("{:?}", it.next()); // None
    //
    // // 残りのサイズを返す？？？
    // let mut it = ["a", "b"].iter();
    // println!("{:?}", it.size_hint()); // (2, Some(2))
    // println!("{:?}", it.next());      // Some("a")
    // println!("{:?}", it.size_hint()); // (1, Some(1))
    // println!("{:?}", it.next());      // Some("b")
    // println!("{:?}", it.size_hint()); // (0, Some(0))
    // println!("{:?}", it.next());      // None
    // println!("{:?}", it.size_hint()); // (0, Some(0))
    // println!("{:?}", it.next());      // None
    // println!("{:?}", it.size_hint()); // (0, Some(0))
    //
    // (0..5).map(|e|e*2).enumerate().for_each(|(i, e)| println!("{:?} {:?}", i, e));

    println!("{:?}", [2, 3].iter());
    println!("{:?}", [2, 3].iter().collect::<Vec<_>>());
    println!("{:?}", [2, 3].iter().rev().collect::<Vec<_>>());
    println!("{:?}", [2, 3].iter().map(|e| e * 2).collect::<Vec<_>>());
    println!("{:?}", [2, 3].iter().filter(|&e| e % 2 == 0).collect::<Vec<_>>());
    println!("{:?}", [2, 3, 4].iter().step_by(2).collect::<Vec<_>>());
    println!("{:?}", [2, 3].iter().zip([4, 5].iter()).collect::<Vec<_>>());
    println!("{:?}", [2, 3].iter().enumerate().collect::<Vec<_>>());
    println!("{:?}", [2, 3].iter().chain([4, 5].iter()).collect::<Vec<_>>());

    println!("{:?}", [2, 3, 4].iter().count());
    println!("{:?}", [2, 3, 4].iter().fold(0, |a, e| a + e));
    println!("{:?}", [2, 3, 4].iter().sum::<isize>());
    println!("{:?}", [2, 3, 4].iter().product::<isize>());
    println!("{:?}", [2, 3, 4].iter().all(|&e| e >= 0));
    println!("{:?}", [2, 3, 4].iter().any(|&e| e >= 4));
    println!("{:?}", [2, 3, 4].iter().find(|&&e| e == 3));
    println!("{:?}", [2, 3, 2].iter().position(|&e| e == 2));
    println!("{:?}", [2, 3, 2].iter().rposition(|&e| e == 2));
    println!("{:?}", [2, 3, 4].iter().cmp([2, 3, 4].iter()));
    println!("{:?}", [2, 3, 4].iter().next());

    println!("{:?}", [2, 3, 4].iter().nth(0));
    println!("{:?}", [2, 3, 4].iter().last());

    println!("{:?}", [2_i32, 3, -4].iter().max());
    println!("{:?}", [2_i32, 3, -4].iter().max_by_key(|e| e.abs()));
    println!("{:?}", [2_i32, 3, -4].iter().max_by(|a, b|a.cmp(b)));

    println!("{:?}", [2_i32, 3, -4].iter().min());
    println!("{:?}", [2_i32, 3, -4].iter().min_by_key(|e| e.abs()));
    println!("{:?}", [2_i32, 3, -4].iter().min_by(|a, b| a.cmp(b)));

    println!("{:?}", ["", "1"].iter().find_map(|e|e.parse::<i32>().ok()));

    let (even, odd): (Vec<i32>, Vec<i32>) = [2, 3, 4].iter().partition(|&e|e % 2 == 0);
    println!("{:?}", even);
    println!("{:?}", odd);

    // [[1, 2], [3, 4]].transpose      # => [[1, 3], [2, 4]]
    let v = [(1, 2), (3, 4)];
    let (left, right): (Vec<_>, Vec<_>) = v.iter().cloned().unzip();
    println!("{:?}", left);     // [1, 3]
    println!("{:?}", right);    // [2, 4]

    // println!("{:?}", [2, 3, 4].iter().reduce(|a, e| a + e));
}
