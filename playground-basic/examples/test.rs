#![feature(path_file_prefix)]
#![feature(path_try_exists)]
#![feature(type_name_of_val)]

use std::path::Path;
use std::path::PathBuf;

fn main() {
    // 文字列として構造を確認する系
    {
        // 絶対パスか？
        println!("{:?}", Path::new("cc.tar.gz").is_absolute());        // => false
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").is_absolute()); // => true
        println!("{:?}", Path::new("~/").is_absolute());               // => false

        // 相対パスか？
        println!("{:?}", Path::new("cc.tar.gz").is_relative());        // => true
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").is_relative()); // => false

        // ルートを含むか？
        println!("{:?}", Path::new("cc.tar.gz").has_root());           // => false
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").has_root());    // => true
        println!("{:?}", Path::new("~/").has_root());                  // => false

        // 指定のパスで始まるか？
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/"));      // => true
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/a"));     // => false
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/aa"));    // => true
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/aa/"));   // => true
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").starts_with("/aa/bb")); // => true

        // 指定のパスで終わるか？
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("z"));            // => false
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("gz"));           // => false
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with(".gz"));          // => false
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("cc.tar.gz"));    // => true
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("/cc.tar.gz"));   // => false
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ends_with("bb/cc.tar.gz")); // => true
    }

    // 各パーツを取得する系
    {
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").extension());   // => Some("gz")
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").file_name());   // => Some("cc.tar.gz")
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").file_stem());   // => Some("cc.tar")
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").file_prefix()); // => Some("cc")
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").parent());      // => Some("/aa/bb")
    }

    // 全パーツを順に取得する系
    {
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").ancestors().collect::<Vec<_>>());   // => ["/aa/bb/cc.tar.gz", "/aa/bb", "/aa", "/"]
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").components().collect::<Vec<_>>());  // => [RootDir, Normal("aa"), Normal("bb"), Normal("cc.tar.gz")]
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").iter().collect::<Vec<_>>());        // => ["/", "aa", "bb", "cc.tar.gz"]
    }

    // パス作成・調整系
    {
        // 祖先のディレクトリ除去
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").strip_prefix("/aa/bb"));  // => Ok("cc.tar.gz")

        // パスを追加していく
        println!("{:?}", Path::new("/aa").join("bb").join("cc.tar.gz"));        // => "/aa/bb/cc.tar.gz"

        // ファイル名・拡張の置き換え
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").with_file_name("xxx"));  // => "/aa/bb/xxx"
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").with_extension("xxx"));  // => "/aa/bb/cc.tar.xxx"
    }

    // ディスクに少しアクセスしちゃう系
    {
        println!("{:?}", Path::new("/bin").exists());      // => true
        println!("{:?}", Path::new("/bin").try_exists());  // => Ok(true)
        println!("{:?}", Path::new("/bin/cat").is_file()); // => true
        println!("{:?}", Path::new("/bin").is_dir());      // => true
        println!("{:?}", Path::new("/etc").is_symlink());  // => true
    }

    // ディスクにがっつりアクセスしちゃう系
    {
        println!("{:?}", Path::new("/etc").metadata());             // => Ok(Metadata { file_type: FileType(FileType { mode: 16877 }), is_dir: true, is_file: false, permissions: Permissions(FilePermissions { mode: 16877 }), modified: Ok(SystemTime { tv_sec: 1646948709, tv_nsec: 53641797 }), accessed: Ok(SystemTime { tv_sec: 1646964920, tv_nsec: 777256864 }), created: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), .. })
        println!("{:?}", Path::new("/etc").symlink_metadata());     // => Ok(Metadata { file_type: FileType(FileType { mode: 41453 }), is_dir: false, is_file: false, permissions: Permissions(FilePermissions { mode: 41453 }), modified: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), accessed: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), created: Ok(SystemTime { tv_sec: 1577865600, tv_nsec: 0 }), .. })
        println!("{:?}", Path::new("/etc").read_link());            // => Ok("private/etc")
        println!("{:?}", Path::new("/etc").read_dir().unwrap().take(2).collect::<Vec<_>>()); // => [Ok(DirEntry("/etc/kcpassword")), Ok(DirEntry("/etc/hosts~"))]
    }

    // 正規化
    {
        // . を含むパスを正規化する(ディスクアクセスあり)
        println!("{:?}", Path::new("/usr/bin/..").canonicalize());    // => Ok("/usr")
        println!("{:?}", Path::new("../../../../..").canonicalize()); // => Ok("/Users")
    }

    // 型変換
    {
        // 表示する用の文字列
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").display()); // => "/aa/bb/cc.tar.gz"

        // std::ffi::OsStr 型にする
        let s = Path::new("/aa/bb/cc.tar.gz").as_os_str();
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").as_os_str()); // => "/aa/bb/cc.tar.gz"
        println!("{:?}", std::any::type_name_of_val(s));             // => "std::ffi::os_str::OsStr"

        // 不正な文字があると失敗する版
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").to_str()); // => Some("/aa/bb/cc.tar.gz")

        // 不正な文字は無視して強行する版
        println!("{:?}", Path::new("/aa/bb/cc.tar.gz").to_string_lossy()); // => "/aa/bb/cc.tar.gz"

        // PathBuf 型にする
        let path = Path::new("/aa/bb/cc.tar.gz").to_path_buf();
        println!("{:?}", std::any::type_name_of_val(&path));     // => "std::path::PathBuf"
    }

    // PathBuf 型にすると自分を更新できる
    {
        let mut path = PathBuf::new();
        path.push("/");
        path.push("aa");
        path.push("xx");
        println!("{:?}", path);     // => "/aa/xx"
        path.pop();
        println!("{:?}", path);     // => "/aa"
        path.push("bb");
        println!("{:?}", path);     // => "/aa/bb"
        path.push("xxx.txt");
        println!("{:?}", path);     // => "/aa/bb/xxx.txt"

        // set_file_name はいったん pop して push するのと同等っぽい
        path.set_file_name("cc.tar.xx");
        println!("{:?}", path);     // => "/aa/bb/cc.tar.xx"

        path.set_extension("gz");
        println!("{:?}", path);     // => "/aa/bb/cc.tar.gz"

        // 更新が終わったら Path 型に戻しておこう
        let path = path.as_path();
        println!("{:?}", std::any::type_name_of_val(path));     // => "std::path::Path"
    }
}
