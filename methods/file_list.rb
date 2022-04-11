# -*- coding: utf-8; compile-command: "./ruby_to_rust runner -c file -r -1" -*-

FILE_LIST = {
  :name => "file",
  :slug => "4a82916a5e58e8",
  :zenn_header_yaml => <<~EOT,
    ---
    title: "【Ruby脳向け】RustのFile系メソッド対応"
    emoji: "🐱"
    type: "tech" # tech: 技術記事 / idea: アイデア
    topics: ["Rust", "Ruby", "File", "ファイル"]
    published: false
    ---
EOT
  :doc_urls => [
    "https://doc.rust-lang.org/std/path/struct.Path.html",
    "https://doc.rust-lang.org/std/fs/struct.File.html",
  ],
  :list => [
    {
      :ruby_method => "length",
      :rust_method => "len",
      :ruby_example => <<~EOT,
      [5, 6].length  # =>
  EOT
      :rust_example => <<~EOT,
// use std::fs::File;
// let f = File::open("foo.txt")?;
  EOT
      :rust_feature => nil,
      :desc => <<~EOT,
EOT
    },
  ],
}
