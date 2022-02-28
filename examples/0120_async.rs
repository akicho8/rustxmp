// 動かない
//
// cargo run --example 0120_example1
//    Compiling x v0.1.0 (/Users/ikeda/src/x)
//     Finished dev [unoptimized + debuginfo] target(s) in 4.21s
//      Running `/Users/ikeda/src/x/target/debug/examples/0120_example1`
// call "http://openccpm.com/blog/"
// thread 'main' panicked at 'there is no reactor running, must be called from the context of a Tokio 1.x runtime', /Users/ikeda/.cargo/registry/src/github.com-1ecc6299db9ec823/tokio-1.17.0/src/runtime/context.rs:21:19
// note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace
//
#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let url = "http://openccpm.com/blog/";
    println!("call {:?}", url);
    let res = reqwest::get(url).await?;
    let body = res.text().await?;
    println!("response is {:?}", body);
    Ok(())
}
