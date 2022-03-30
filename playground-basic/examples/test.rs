// use itertools::Itertools;

fn main() {
    use glob::glob;
    let files = glob("a/**/*.png")
        .unwrap()
        .map(|e| e.unwrap())
        .collect::<Vec<_>>();
    println!("{:?}", files);
    // >> ["a/b/c/1.png", "a/b/c/2.png"]

    use glob::glob_with;
    use glob::MatchOptions;
    let mut options = MatchOptions::new();
    options.case_sensitive = false; // false:大小文字の区別をしない
    let files = glob_with("a/**/*.png", options)
        .unwrap()
        .map(|e| e.unwrap())
        .collect::<Vec<_>>();
    println!("{:?}", files);
    // >> ["a/b/c/1.png", "a/b/c/2.png", "a/b/c/3.PNG"]

    let paths = globmatch::Builder::new("a/**/*.{png,PNG}")
        .build(".")
        .unwrap()
        .into_iter()
        .flatten()
        .collect::<Vec<_>>();
    // PathBuf の配列
    println!("{:?}", paths);
    // ["./a/b/c/2.png", "./a/b/c/3.PNG", "./a/b/c/1.png"]
}
