fn main() {
    let ok_value: Result<isize, &str> = Ok(5);
    let ng_value: Result<isize, &str> = Err("失敗");
    let ok2_value: Result<isize, &str> = Ok(20);

    println!("{:?}", ok_value.is_ok()); // >> true
    println!("{:?}", ng_value.is_ok()); // >> false

    println!("{:?}", ok_value.is_err()); // >> false
    println!("{:?}", ng_value.is_err()); // >> true

    // Result型 (Ok, Err) を Option型 (Some, None) に置き換える
    println!("{:?}", ok_value.ok()); // >> Some(5)
    println!("{:?}", ng_value.ok()); // >> None

    println!("{:?}", ok_value.err()); // >> None
    println!("{:?}", ng_value.err()); // >> Some("失敗")

    println!("{:?}", ok_value.map(|e| e + 1)); // >> Ok(6)
    println!("{:?}", ng_value.map(|e| e + 1)); // >> Err("失敗")

    println!("{:?}", ok_value.and_then(|e| Ok(e + 1))); // >> Ok(6)
    println!("{:?}", ng_value.and_then::<isize, _>(|_| Err("x"))); // >> Err("失敗")

    println!("{:?}", ok_value.map_or(999, |e| e + 1)); // >> 6
    println!("{:?}", ng_value.map_or(999, |e| e + 1)); // >> 999

    println!("{:?}", ok_value.map_or_else(|_| 999, |e|e + 1)); // >> 6
    println!("{:?}", ng_value.map_or_else(|_| 999, |e|e + 1)); // >> 999

    println!("{:?}", ok_value.map_err(|e| format!("大{}", e))); // >> Ok(5)
    println!("{:?}", ng_value.map_err(|e| format!("大{}", e))); // >> Err("大失敗")

    println!("{:?}", ok_value.expect("xxx")); // >> 5
    // println!("{:?}", ng_value.expect("xxx")); // ※実行できない

    println!("{:?}", ok_value.unwrap()); // >> 5
    // println!("{:?}", ng_value.unwrap()); // ※実行できない

    println!("{:?}", ok_value.unwrap_or(999)); // >> 5
    println!("{:?}", ng_value.unwrap_or(999)); // >> 999

    println!("{:?}", ok_value.unwrap_or_else(|_| 999)); // >> 5
    println!("{:?}", ng_value.unwrap_or_else(|_| 999)); // >> 999

    println!("{:?}", ok_value.unwrap_or_default()); // >> 5
    println!("{:?}", ng_value.unwrap_or_default()); // >> 0

    // println!("{:?}", ok_value.expect_err("xxx")); // ※実行できない
    println!("{:?}", ng_value.expect_err("xxx")); // >> "失敗"

    // println!("{:?}", ok_value.unwrap_err()); // ※実行できない
    println!("{:?}", ng_value.unwrap_err()); // >> "失敗"

    let x: Result<Option<isize>, &str> = Ok(Some(7));
    let y: Option<Result<isize, &str>> = x.transpose();
    println!("{:?}", x); // >> Ok(Some(7))
    println!("{:?}", y); // >> Some(Ok(7))

    let x: Option<Result<isize, &str>> = Some(Ok(7));
    let y: Result<Option<isize>, &str> = x.transpose();
    println!("{:?}", x); // >> Some(Ok(7))
    println!("{:?}", y); // >> Ok(Some(7))

    println!("{:?}", ok_value.and(ok2_value)); // >> Ok(20)
    println!("{:?}", ok_value.and(ng_value));  // >> Err("失敗")
    println!("{:?}", ng_value.and(ok2_value)); // >> Err("失敗")
    println!("{:?}", ng_value.and(ng_value));  // >> Err("失敗")

    println!("{:?}", ok_value.or(ok2_value)); // >> Ok(5)
    println!("{:?}", ok_value.or(ng_value));  // >> Ok(5)
    println!("{:?}", ng_value.or(ok2_value)); // >> Ok(20)
    println!("{:?}", ng_value.or(ng_value));  // >> Err("失敗")

    println!("{:?}", unsafe { ok_value.unwrap_unchecked() });      // >> 5
    println!("{:?}", unsafe { ng_value.unwrap_err_unchecked() });  // >> "失敗"
    // println!("{:?}", unsafe { ng_value.unwrap_unchecked() });  // ※エラー
    // println!("{:?}", unsafe { ok_value.unwrap_err_unchecked() });  // ※エラー

    fn ok(x: u32) -> Result<u32, u32> { Ok(x * x) }
    fn err(x: u32) -> Result<u32, u32> { Err(x) }
    println!("{:?}", Ok(2).or_else(ok).or_else(ok));    // >> Ok(2)
    println!("{:?}", Ok(2).or_else(err).or_else(ok));   // >> Ok(2)
    println!("{:?}", Err(3).or_else(ok).or_else(err));  // >> Ok(9)
    println!("{:?}", Err(3).or_else(err).or_else(err)); // >> Err(3)
}
