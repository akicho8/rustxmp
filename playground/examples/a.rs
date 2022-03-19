sh: line 1: 10581 Illegal instruction: 4  ./_rust_xmpfilter
/Users/ikeda/src/x/rust_wrapper.rb:32:in `to_s': /Users/ikeda/src/x/playground/examples/_rust_xmpfilter.rs (RustWrapper::RustRuntimeError)
	from /Users/ikeda/src/x/embed_processor.rb:11:in `to_s'
	from /Users/ikeda/bin/rust-xmpfilter:15:in `runner'
	from /usr/local/var/rbenv/versions/2.6.5/lib/ruby/gems/2.6.0/gems/thor-1.2.1/lib/thor/command.rb:27:in `run'
	from /usr/local/var/rbenv/versions/2.6.5/lib/ruby/gems/2.6.0/gems/thor-1.2.1/lib/thor/invocation.rb:127:in `invoke_command'
	from /usr/local/var/rbenv/versions/2.6.5/lib/ruby/gems/2.6.0/gems/thor-1.2.1/lib/thor.rb:392:in `dispatch'
	from /usr/local/var/rbenv/versions/2.6.5/lib/ruby/gems/2.6.0/gems/thor-1.2.1/lib/thor/base.rb:485:in `start'
	from /Users/ikeda/bin/rust-xmpfilter:31:in `<main>'
--------------------------------------------------------------------------------
/Users/ikeda/src/x/playground/examples/_rust_xmpfilter.rs
--------------------------------------------------------------------------------
fn main() {
    let ok_value: Result<isize, &str> = Ok(10);
    let ng_value: Result<isize, &str> = Err("失敗");

    let ok2_value: Result<isize, &str> = Ok(20);

    println!("{:?}", ok_value.is_ok()); // >> true
    println!("{:?}", ng_value.is_ok()); // >> false

    println!("{:?}", ok_value.is_err()); // >> false
    println!("{:?}", ng_value.is_err()); // >> true

    // Result型 (Ok, Err) を Option型 (Some, None) に置き換える
    println!("{:?}", ok_value.ok()); // >> Some(10)
    println!("{:?}", ng_value.ok()); // >> None

    println!("{:?}", ok_value.err()); // >> None
    println!("{:?}", ng_value.err()); // >> Some("失敗")

    println!("{:?}", ok_value.map(|e| e * 2)); // >> Ok(20)
    println!("{:?}", ng_value.map(|e| e * 2)); // >> Err("失敗")

    println!("{:?}", ok_value.and_then(|e| Ok(e * 2))); // >> Ok(20)
    println!("{:?}", ng_value.and_then(|e| Ok(e * 2))); // >> Err("失敗")

    println!("{:?}", ok_value.map_or(999, |e| e * 2)); // >> 20
    println!("{:?}", ng_value.map_or(999, |e| e * 2)); // >> 999

    println!("{:?}", ok_value.map_or_else(|_| 999, |e|e * 2)); // >> 20
    println!("{:?}", ng_value.map_or_else(|_| 999, |e|e * 2)); // >> 999

    println!("{:?}", ok_value.map_err(|e| format!("大{}", e))); // >> Ok(10)
    println!("{:?}", ng_value.map_err(|e| format!("大{}", e))); // >> Err("大失敗")

    println!("{:?}", ok_value.expect("xxx")); // >> 10
    // println!("{:?}", ng_value.expect("xxx")); // ※実行できない

    println!("{:?}", ok_value.unwrap()); // >> 10
    // println!("{:?}", ng_value.unwrap()); // ※実行できない

    println!("{:?}", ok_value.unwrap_or(999)); // >> 10
    println!("{:?}", ng_value.unwrap_or(999)); // >> 999

    println!("{:?}", ok_value.unwrap_or_else(|_| 999)); // >> 10
    println!("{:?}", ng_value.unwrap_or_else(|_| 999)); // >> 999

    println!("{:?}", ok_value.unwrap_or_default()); // >> 10
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

    println!("{:?}", ok_value.or(ok2_value)); // >> Ok(10)
    println!("{:?}", ok_value.or(ng_value));  // >> Ok(10)
    println!("{:?}", ng_value.or(ok2_value)); // >> Ok(20)
    println!("{:?}", ng_value.or(ng_value));  // >> Err("失敗")

    println!("{:?}", unsafe { ok_value.unwrap_unchecked() });  // >> 10
    println!("{:?}", unsafe { ng_value.unwrap_unchecked() });  // >> 10
    println!("{:?}", unsafe { ok_value.unwrap_err_unchecked() });  // >> "失敗"
    println!("{:?}", unsafe { ng_value.unwrap_err_unchecked() });  // >> "失敗"

    // fn ok(x: u32) -> Result<u32, u32> { Ok(x * x) }
    // fn err(x: u32) -> Result<u32, u32> { Err(x) }
    // println!("{:?}", Ok(2).or_else(ok).or_else(ok));    // =>
    // println!("{:?}", Ok(2).or_else(err).or_else(ok));   // =>
    // println!("{:?}", Err(3).or_else(ok).or_else(err));  // =>
    // println!("{:?}", Err(3).or_else(err).or_else(err)); // =>
}
--------------------------------------------------------------------------------
pid 10577 exit 132
--------------------------------------------------------------------------------
