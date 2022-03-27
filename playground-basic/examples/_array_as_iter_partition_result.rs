fn main() {
    use itertools::Itertools;

// これが
use itertools::Either;
let v = vec![Ok(5), Err(6), Ok(7), Err(8)];
let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_map(|e| {
    match e {
        Ok(v)  => Either::Left(v),
        Err(v) => Either::Right(v),
    }
});
println!("{:?}", successes);
println!("{:?}", failures);

// 簡潔に書ける
let v = vec![Ok(5), Err(6), Ok(7), Err(8)];
let (successes, failures): (Vec<_>, Vec<_>) = v.into_iter().partition_result();
println!("{:?}", successes);
println!("{:?}", failures);
}
