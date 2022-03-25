// use itertools::Itertools;
// #![feature(string_remove_matches)]
// let sigma = "Σ";
// assert_eq!("σ", sigma.to_lowercase());
// // but at the end of a word, it's ς, not σ:
// #![feature(vec_into_raw_parts)]
// #[warn(unused_imports)]
#![feature(path_file_prefix)]

use std::fs::File;
use std::io::Write;
use std::process::Command;
use std::path::Path;

// fn main() {
fn main() -> std::io::Result<()> {
    // let file = File::open("README.org")?;
    // for line in BufReader::new(file).lines() {
    //     println!("{:?}", line?);
    // }

    let f = File::open("input.txt")?;
    println!("{:?}", f);        // >> File { fd: 3, path: "/Users/ikeda/src/x/playground/examples/input.txt", read: true, write: false }

    let f = File::create("_output.txt")?;
    println!("{:?}", f);        // >> File { fd: 4, path: "/Users/ikeda/src/x/playground/examples/_output.txt", read: false, write: true }

    let f = File::options().read(true).open("input.txt")?;
    println!("{:?}", f);        // >> File { fd: 5, path: "/Users/ikeda/src/x/playground/examples/input.txt", read: true, write: false }

    let mut f = File::create("_output.txt")?;
    f.write_all(b"foo")?;
    f.sync_all()?;
    f.sync_data()?;

    let f = File::create("_output.txt")?;
    f.set_len(2)?;          // 2バイトの0が入っている

    let f = File::open("input.txt")?;
    println!("{:?}", f.metadata()?); // >> Metadata { file_type: FileType(FileType { mode: 33206 }), is_dir: false, is_file: true, permissions: Permissions(FilePermissions { mode: 33206 }), modified: Ok(SystemTime { tv_sec: 1648259956, tv_nsec: 578561833 }), accessed: Ok(SystemTime { tv_sec: 1648202902, tv_nsec: 503558775 }), created: Ok(SystemTime { tv_sec: 1648202902, tv_nsec: 503558775 }), .. }

    // chmod -r かな？
    let f = File::open("input.txt")?;
    let mut perms = f.metadata()?.permissions();
    perms.set_readonly(true);
    println!("{:?}", perms);    // >> Permissions(FilePermissions { mode: 33060 })
    f.set_permissions(perms)?;

    // chmod +r かな？
    let mut perms = f.metadata()?.permissions();
    perms.set_readonly(false);
    println!("{:?}", perms);    // >> Permissions(FilePermissions { mode: 33206 })
    f.set_permissions(perms)?;

    // 標準入力 cat _output.txt | rev
    let mut f = File::create("_output.txt")?;
    f.write_all(b"aaa\nbbb\nccc\n")?;
    let f = File::open("_output.txt").unwrap();
    let reverse = Command::new("rev").stdin(f).output().unwrap();
    println!("{:?}", reverse.stdout); // >> [97, 97, 97, 10, 98, 98, 98, 10, 99, 99, 99, 10]

    println!("{:?}", Path::new("cc.tar.gz").is_absolute());      // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").is_absolute()); // >> true

    println!("{:?}", Path::new("cc.tar.gz").is_relative());      // >> true
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").is_relative()); // >> false

    println!("{:?}", Path::new("cc.tar.gz").has_root());         // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").has_root());    // >> true

    println!("{:?}", Path::new("cc.tar.gz").has_root());         // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").has_root());    // >> true

    println!("{:?}", Path::new("cc.tar.gz").parent());           // >> Some("")
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").parent());      // >> Some("/aa/bb")

    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ancestors().collect::<Vec<_>>()); // >> ["/aa/bb/cc.tar.gz", "/aa/bb", "/aa", "/"]

    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").file_name()); // >> Some("cc.tar.gz")

    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").strip_prefix("/"));      // >> Ok("aa/bb/cc.tar.gz")
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").strip_prefix("/a"));     // >> Err(StripPrefixError(()))
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").strip_prefix("/aa"));    // >> Ok("bb/cc.tar.gz")
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").strip_prefix("/aa/"));   // >> Ok("bb/cc.tar.gz")
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").strip_prefix("/aa/bb")); // >> Ok("cc.tar.gz")

    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/"));      // >> true
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/a"));     // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/aa"));    // >> true
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/aa/"));   // >> true
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/aa/bb")); // >> true

    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("z"));          // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("gz"));        // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with(".gz"));       // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("cc.tar.gz"));     // >> true
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("/cc.tar.gz"));    // >> false
    println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("bb/cc.tar.gz"));  // >> true

    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").file_stem());  // >> Some("cc.tar")

    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").file_prefix());  // >> Some("cc")

    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").extension());  // >> Some("txt")

    println!("{:?}", Path::new("/aa").join("bb").join("cc.tar.txt"));  // >> "/aa/bb/cc.tar.txt"

    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").with_file_name("xxx"));  // >> "/aa/bb/xxx"
    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").with_extension("xxx"));  // >> "/aa/bb/cc.tar.xxx"

    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").components().collect::<Vec<_>>());  // >> [RootDir, Normal("aa"), Normal("bb"), Normal("cc.tar.txt")]

    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").iter().collect::<Vec<_>>());  // >> ["/", "aa", "bb", "cc.tar.txt"]

    // to_s 相当
    println!("{:?}", Path::new("/aa/bb/cc.tar.txt").display()); // >> "/aa/bb/cc.tar.txt"

    println!("{:?}", Path::new("/etc").metadata()); // >> Ok(Metadata { file_type: FileType(FileType { mode: 16877 }), is_dir: true, is_file: false, permissions: Permissions(FilePermissions { mode: 16877 }), modified: Ok(SystemTime { tv_sec: 1646948709, tv_nsec: 53641797 }), accessed: Ok(SystemTime { tv_sec: 1646964920, tv_nsec: 777256864 }), created: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), .. })

    println!("{:?}", Path::new("/etc").symlink_metadata()); // >> Ok(Metadata { file_type: FileType(FileType { mode: 41453 }), is_dir: false, is_file: false, permissions: Permissions(FilePermissions { mode: 41453 }), modified: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), accessed: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), created: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), .. })

    println!("{:?}", Path::new("/etc").symlink_metadata()); // >> Ok(Metadata { file_type: FileType(FileType { mode: 41453 }), is_dir: false, is_file: false, permissions: Permissions(FilePermissions { mode: 41453 }), modified: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), accessed: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), created: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), .. })
    
    Ok(())
}
