
fn main() {
    use itertools::Itertools;
    // println!("{:?}", [5, 6, 7].iter().find_or_last(|&&e| e == 6));
    // println!("{:?}", [5, 6, 7].iter().find_or_last(|&&e| e == 0));
    // println!("{:?}", [5, 6, 7].iter().find_or_first(|&&e| e == 6));
    // println!("{:?}", [5, 6, 7].iter().find_or_first(|&&e| e == 0));
    // use itertools::Position;

    println!("{:?}", [5, 6, 7].iter().with_position().collect_vec());
    println!("{:?}", [5].iter().with_position().collect_vec());

    // let it = [5, 6, 7].iter().pad_using(10, |i| *(2 * i)).collect::<Vec<_>>();
    // println!("{:?}", it);

    // println!("{:?}", [].iter().sum::<isize>());
    // println!("{:?}", [].iter().sum1::<isize>());

    // let s = format!("【{}】", [1.5, 1.5].iter().format_with("-", |e, f| f(&format_args!("{:.0}", e))));
    // println!("{:?}", s);

    // println!("{:?}", [1.5, 1.5].iter().format_with(", ", |elt, f| f(&format_args!("{:.2}", elt))));

    // assert_eq!(format!("{}", formatter),"1.10, 2.72, -3.00");

    // println!("({:.0})", [1.5, 1.5, 1.5].iter().format("-"));

    // // use itertools::Itertools;
    // // println!("{:?}", [5, 6, 7].iter().combinations(2).collect::<Vec<_>>());
    //
    // println!("{:?}", ["5", "6", "7"].join("-"));
    // println!("{:?}", [5, 6, 7].join("-"));
    //
    // use itertools::Itertools;
    // println!("{:?}", [5, 6, 7].iter().join("-"));

    // use itertools::Itertools;
    // let v = vec![(1, 2, 3), (4, 5, 6), (7, 8, 9)];
    // let v = v.into_iter().multiunzip();
    // println!("{:?}", v);

    // use itertools::Itertools;
    //
    // let v = vec![(1, 2, 3), (4, 5, 6), (7, 8, 9)];
    //
    // let (a, b, c): (Vec<_>, Vec<_>, Vec<_>) = v.into_iter().multiunzip();
    //
    // assert_eq!(a, vec![1, 4, 7]);
    // assert_eq!(b, vec![2, 5, 8]);
    // assert_eq!(c, vec![3, 6, 9]);

    // println!("{:?}", [5, 6, 7, 8, 9].iter());
    // println!("{:?}", vec![5, 6, 7, 8, 9].iter_mut());
    // println!("{:?}", vec![5, 6, 7, 8, 9].into_iter());

}
