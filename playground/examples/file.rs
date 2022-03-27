use std::fs;
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
    println!("{:?}", f.metadata()?); // >> Metadata { file_type: FileType(FileType { mode: 33206 }), is_dir: false, is_file: true, permissions: Permissions(FilePermissions { mode: 33206 }), modified: Ok(SystemTime { tv_sec: 1648287844, tv_nsec: 753325393 }), accessed: Ok(SystemTime { tv_sec: 1648340634, tv_nsec: 528354561 }), created: Ok(SystemTime { tv_sec: 1648202902, tv_nsec: 503558775 }), .. }

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

    let s = fs::read_to_string("input.txt")?;
    println!("{:?}", s);                      // >> "01234\n56789\n"

    Ok(())
}
