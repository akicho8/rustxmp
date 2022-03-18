
fn main() {
    use itertools::Itertools;
    use itertools::Either;
    let v = vec![Ok(5), Err(6), Ok(7), Err(8)];
    let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_map(|e| {
        match e {
            Ok(v)  => Either::Left(v),
            Err(v) => Either::Right(v),
        }
    });
    // let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_map(|r| {
    //     match r {
    //         Ok(v)  => Either::Left(v),
    //         Err(v) => Either::Right(v),
    //     }
    // });
    // println!("{:?}", successes);
    // println!("{:?}", failures);
    //
    // let v = vec![Ok(1), Err(false), Err(true), Ok(2)];
    // let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_result();
    // println!("{:?}", successes);
    // println!("{:?}", failures);
}
