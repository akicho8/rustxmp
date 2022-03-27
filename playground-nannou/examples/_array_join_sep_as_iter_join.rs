fn main() {
    // これは動くのに
println!("{:?}", ["a", "b", "c"].join("-"));

// これは動かない
// [5, 6, 7].join("-")

// でもこうやると動く
use itertools::Itertools;
println!("{:?}", [5, 6, 7].iter().join("-"));
}
