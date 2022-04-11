# -*- coding: utf-8; compile-command: "./ruby_to_rust runner -c string -r -1" -*-

STRING_LIST = {
  :name => "string",
  :slug => "895e0547645e03",
  :zenn_header_yaml => <<~EOT,
    ---
    title: "【Ruby脳向け】RustのString系メソッド対応"
    emoji: "🐶"
    type: "tech" # tech: 技術記事 / idea: アイデア
    topics: ["Rust", "Ruby", "String", "文字列"]
    published: true
    ---
EOT
  :doc_urls => [
    "https://doc.rust-lang.org/std/string/struct.String.html",
  ],
  :list => [
    {
      :ruby_method => "bytesize",
      :rust_method => "len",
      :ruby_example => <<~EOT,
"🥑".bytesize  # =>
  EOT
      :rust_example => <<~EOT,
"🥑".len()  // =>
  EOT
      :rust_feature => nil,
      :desc => "Ruby の配列は文字単位になっているのに対して Rust はバイト単位の配列になっている",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.len",
    },

    {
      :ruby_method => "[]",
      :rust_method => "get",
      :ruby_example => <<~EOT,
s = "A🥑B"
s[0] # => "A"
s[1] # => "🥑"
s[2] # => "B"
  EOT
      :rust_example => <<~EOT,
let s = "A🥑B";
s.get(0..1) // =>
s.get(1..5) // =>
s.get(5..6) // =>
  EOT
      :rust_feature => nil,
      :desc => "範囲でしか指定できない。Rustではマルチバイト文字を含む文字列の操作が難しそうだ。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.get",
    },

    {
      :ruby_method => "chars",
      :rust_method => "chars",
      :ruby_example => <<~EOT,
"Aあ🥑".chars       # =>
"Aあ🥑".codepoints  # =>
  EOT
      :rust_example => <<~EOT,
"Aあ🥑".chars().collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "文字単位で扱う場合はさっさとこれで配列化してから操作した方がよさそう",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.chars",
    },

    {
      :ruby_method => "size",
      :rust_method => "chars.count",
      :ruby_example => <<~EOT,
"🥑".size  # =>
  EOT
      :rust_example => <<~EOT,
"🥑".chars().count()  // =>
  EOT
      :rust_feature => nil,
      :desc => "文字数",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.chars",
    },

    {
      :ruby_method => "to_i",
      :rust_method => "parse::<isize>()",
      :ruby_example => <<~EOT,
"567".to_i # =>
  EOT
      :rust_example => <<~EOT,
"567".parse::<isize>() // =>

let v: isize = "567".parse().unwrap();
v // =>
  EOT
      :rust_feature => nil,
      :desc => "`::<xxx>` の部分をターボフィッシュというらしい。戻値を受け取る変数に型指定があれば省略できるようだけど parse の方に指定した方がわかりやすい。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.parse",
    },

    {
      :ruby_method => "lines(chomp: true)",
      :rust_method => "lines",
      :ruby_example => <<~'EOT',
"foo\nbar\nbaz\n".lines(chomp: true) # =>
  EOT
      :rust_example => <<~'EOT',
"foo\nbar\nbaz\n".lines().collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.lines",
    },

    {
      :ruby_method => "strip",
      :rust_method => "trim",
      :ruby_example => <<~'EOT',
" foo ".strip # =>
  EOT
      :rust_example => <<~'EOT',
" foo ".trim() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.trim",
    },

    {
      :ruby_method => "lstrip",
      :rust_method => "trim_start",
      :ruby_example => <<~'EOT',
" foo ".lstrip # =>
  EOT
      :rust_example => <<~'EOT',
" foo ".trim_start() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.trim_start",
    },
    {
      :ruby_method => "rstrip",
      :rust_method => "trim_end",
      :ruby_example => <<~'EOT',
" foo ".rstrip # =>
  EOT
      :rust_example => <<~'EOT',
" foo ".trim_end() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.trim_end",
    },

    {
      :ruby_method => "split",
      :rust_method => "split_whitespace",
      :ruby_example => <<~'EOT',
" a\r\n b　c\n".gsub(/[[:space:]]+/, " ").split # =>
  EOT
      :rust_example => <<~'EOT',
" a\r\n b　c\n".split_whitespace().collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "全角スペースに対応している。使いやすそう。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.split_whitespace",
    },

    {
      :ruby_method => "split(x)",
      :rust_method => "split(x)",
      :ruby_example => <<~'EOT',
"a-b-c".split("-")    # =>
"a-b_c".split(/[-_]/) # =>
  EOT
      :rust_example => <<~'EOT',
"a-b-c".split('-').collect::<Vec<_>>()          // =>
"a-b-c".split(|e| e == '-').collect::<Vec<_>>() // =>
"a-b_c".split(['-', '_']).collect::<Vec<_>>()   // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.split",
    },

    {
      :ruby_method => "gsub!(str, \"\")",
      :rust_method => "remove_matches(str)",
      :ruby_example => <<~EOT,
s = "foo_bar"
s.gsub!("bar", "")
s # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo_bar");
s.remove_matches("bar");
s // =>
  EOT
      :rust_feature => "#![feature(string_remove_matches)]",
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.remove_matches",
    },

    {
      :ruby_method => "concat(str)",
      :rust_method => "push_str(str)",
      :ruby_example => <<~EOT,
s = "foo"
s.concat("bar")
s  # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.push_str("bar");
s  // =>
  EOT
      :rust_feature => nil,
      :desc => "メソッド名がイケてない",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.push_str",
    },

    {
      :ruby_method => "concat(ch)",
      :rust_method => "push(ch)",
      :ruby_example => <<~EOT,
s = "foo"
s.concat('b')
s.concat('a')
s.concat('r')
s  # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.push('b');
s.push('a');
s.push('r');
s  // =>
  EOT
      :rust_feature => nil,
      :desc => "こんな滅多に使わなそうなのは push_char にして push_str を push にしてほしかった",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.push",
    },

    {
      :ruby_method => "self * n",
      :rust_method => "repeat(n)",
      :ruby_example => <<~'EOT',
"foo" * 2 # =>
  EOT
      :rust_example => <<~'EOT',
"foo".repeat(2) // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.repeat",
    },

    {
      :ruby_method => "clear",
      :rust_method => "clear",
      :ruby_example => <<~EOT,
s = "foo"
s.clear
s  # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.clear();
s  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.clear",
    },
    {
      :ruby_method => "empty?",
      :rust_method => "is_empty",
      :ruby_example => <<~EOT,
"".empty?  # =>
  EOT
      :rust_example => <<~EOT,
"".is_empty()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.is_empty",
    },

    {
      :ruby_method => "include?",
      :rust_method => "contains",
      :ruby_example => <<~EOT,
"abcd".include?("bc") # =>
  EOT
      :rust_example => <<~EOT,
"abcd".contains("bc") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.contains",
    },
    {
      :ruby_method => "chars.each.with_index",
      :rust_method => "char_indices",
      :ruby_example => <<~EOT,
"Aあ🥑".chars.each.with_index.entries # =>
  EOT
      :rust_example => <<~EOT,
"Aあ🥑".char_indices().collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "Rust のほうの位置は連番ではない。バイト配列での位置になっている。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.char_indices",
    },

    {
      :ruby_method => "inspect",
      :rust_method => "escape_debug",
      :ruby_example => <<~'EOT',
"A🥑\n".inspect  # =>
  EOT
      :rust_example => <<~'EOT',
"A🥑\n".escape_debug().to_string()    // =>
  EOT
      :rust_feature => nil,
      :desc => "改行がエスケープされ `\\n` 表記になる",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.escape_debug",
    },

    {
      :ruby_method => "gsub",
      :rust_method => "replace",
      :ruby_example => <<~'EOT',
"abcabcabc".gsub("ab", "__") # =>
  EOT
      :rust_example => <<~'EOT',
"abcabcabc".replace("ab", "__") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.replace",
    },
    {
      :ruby_method => "gsub 最初のn回だけ",
      :rust_method => "replacen",
      :ruby_example => <<~'EOT',
# もっとましな方法ありそう
n = 2
c = 0
s = "abcabcabc".gsub("ab") do |m|
  c += 1
  if c <= n
    "__"
  else
    m
  end
end
s # => "__c__cabc"
  EOT
      :rust_example => <<~'EOT',
"abcabcabc".replacen("ab", "__", 2) // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.replacen",
    },

    {
      :ruby_method => "insert(i, str)",
      :rust_method => "insert_str(i, str)",
      :ruby_example => <<~EOT,
s = "foo"
s.insert(1, "__")
s # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.insert_str(1, "__"); // 文字列
s // =>
  EOT
      :rust_feature => nil,
      :desc => "メソッド名がイケてない",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.insert_str",
    },
    {
      :ruby_method => "insert(i, ch)",
      :rust_method => "insert(i, ch)",
      :ruby_example => <<~EOT,
s = "foo"
s.insert(1, "_")
s # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.insert(1, '_'); // 文字
s // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.insert",
    },

    {
      :ruby_method => "new",
      :rust_method => "new",
      :ruby_example => <<~EOT,
s = String.new
s  # =>
  EOT
      :rust_example => <<~EOT,
let s = String::new();
s  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.new",
    },
    {
      :ruby_method => %(bytes),
      :rust_method => "into_bytes",
      :ruby_example => <<~EOT,
"abc".bytes # =>
  EOT
      :rust_example => <<~EOT,
String::from("abc").into_bytes() // =>
  EOT
      :rust_feature => nil,
      :desc => "所有権が移動するやつ？",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.into_bytes",
    },
    {
      :ruby_method => %(bytes),
      :rust_method => "as_bytes",
      :ruby_example => <<~EOT,
"abc".bytes # =>
  EOT
      :rust_example => <<~EOT,
"abc".as_bytes() // =>
b"abc"           // =>
  EOT
      :rust_feature => nil,
      :desc => "型変換？ 表記がアレだけど `b` をつけても同じ結果になる。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.as_bytes",
    },
    {
      :ruby_method => %(bytes),
      :rust_method => "as_mut_vec",
      :ruby_example => <<~EOT,
"abc".bytes # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("abc");
let v = unsafe { s.as_mut_vec() };
v // =>
  EOT
      :rust_feature => nil,
      :desc => "同じようなのがいくつもあるな",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_vec",
    },

    {
      :ruby_method => "slice!(n..)",
      :rust_method => "truncate(n)",
      :ruby_example => <<~EOT,
s = "foobar"
s.slice!(3..) # =>
s             # =>

s = "A🥑B"
s.slice!(2..) # =>
s             # =>
  EOT
      :rust_example => <<~EOT,
// truncate した部分を返したりはしない
let mut s = String::from("foobar");
s.truncate(3) // =>
s             // =>

// パニックになる
// let mut s = String::from("A🥑B");
// s.truncate(2)
  EOT
      :rust_feature => nil,
      :desc => "マルチバイト文字が含まれていたら文字の境界線を慎重に指定しないとパニックになる",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.truncate",
    },
    {
      :ruby_method => "slice!(-1)",
      :rust_method => "pop",
      :ruby_example => <<~EOT,
s = "foobar"
s.slice!(-1) # =>
s            # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foobar");
s.pop() // =>
s       // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.pop",
    },
    {
      :ruby_method => "slice!(i)",
      :rust_method => "remove(i)",
      :ruby_example => <<~EOT,
s = "foobar"
s.slice!(3) # =>
s           # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foobar");
s.remove(3) // =>
s           // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.remove",
    },

    {
      :ruby_method => "select! 類似",
      :rust_method => "retain",
      :ruby_example => <<~EOT,
class String
  def retain(&block)
    replace(each_char.select(&block).join)
  end
end

s = "f_o_o"
s.retain { |e| e != "_" }
s # => "foo"

s = "f_o_o"
s.delete!("_")
s # => "foo"
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("f_o_o");
s.retain(|e| e != '_'); // "_" では文字列を表すのでコンパイルエラー
s // =>
  EOT
      :rust_feature => nil,
      :desc => "この例では `remove_matches(\"_\")` のほうが良い",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.retain",
    },

    {
      :ruby_method => "slice!(i..)",
      :rust_method => "split_off(i)",
      :ruby_example => <<~EOT,
s = "foo"
s.slice!(1..)  # =>
s              # =>

s = "foo"
s.byteslice(1...)            # =>
s.replace(s.byteslice(...1))
s                            # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.split_off(1) // =>
s              // =>
  EOT
      :rust_feature => nil,
      :desc => "正確には byteslice の破壊版に近い",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.split_off",
    },

    {
      :ruby_method => "[range] = v",
      :rust_method => "replace_range(range, v)",
      :ruby_example => <<~EOT,
s = "abcd"
s[...2] = "__"
s  # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("abcd");
s.replace_range(..2, "__");
s  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.replace_range",
    },

    {
      :ruby_method => "slice",
      :rust_method => "get_mut",
      :ruby_example => <<~EOT,
"foo".slice(0..1).upcase # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
let s = s.get_mut(0..=1);
let s = s.map(|e| {         // e は "fo"
    e.make_ascii_uppercase();
    &*e
});
s // =>
  EOT
      :rust_feature => nil,
      :desc => "なんだこれ",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.get_mut",
    },

    {
      :ruby_method => "split(x).reverse",
      :rust_method => "rsplit(x)",
      :ruby_example => <<~'EOT',
"a-b-c".split("-").reverse # =>
  EOT
      :rust_example => <<~'EOT',
"a-b-c".rsplit('-').collect::<Vec<_>>()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit",
    },

    {
      :ruby_method => "split(/(?<=x)/)",
      :rust_method => "split_inclusive(x)",
      :ruby_example => <<~'EOT',
"a-b-c".split(/(?<=-)/)  # => ["a-", "b-", "c"]
  EOT
      :rust_example => <<~'EOT',
"a-b-c".split_inclusive('-').collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "セパレータで分けて前の要素に残す",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.split_inclusive",
    },

    {
      :ruby_method => "split(x)",
      :rust_method => "split_terminator(x)",
      :ruby_example => <<~'EOT',
"a-b-c-".split("-") # =>
  EOT
      :rust_example => <<~'EOT',
"a-b-c-".split_terminator("-").collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "セパレータではなく句点のように終端に特定の文字がある構造を分ける",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.split_terminator",
    },
    {
      :ruby_method => "split(x).reverse",
      :rust_method => "rsplit_terminator(x)",
      :ruby_example => <<~'EOT',
"a-b-c-".split("-").reverse # =>
  EOT
      :rust_example => <<~'EOT',
"a-b-c-".rsplit_terminator("-").collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit_terminator",
    },

    {
      :ruby_method => "split(sep, n)",
      :rust_method => "splitn(n, sep)",
      :ruby_example => <<~'EOT',
"foo-bar-baz".split("-", 2) # =>
  EOT
      :rust_example => <<~'EOT',
"foo-bar-baz".splitn(2, "-").collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.splitn",
    },
    {
      :ruby_method => "split 末尾から",
      :rust_method => "rsplitn(n, sep)",
      :ruby_example => <<~'EOT',
"foo-bar-baz".reverse.split("-", 2).collect(&:reverse) # => ["baz", "foo-bar"]
  EOT
      :rust_example => <<~'EOT',
"foo-bar-baz".rsplitn(2, "-").collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.rsplitn",
    },
    {
      :ruby_method => "split(sep, 2)",
      :rust_method => "split_once(sep)",
      :ruby_example => <<~'EOT',
"foo-bar-baz".split("-", 2) # =>
  EOT
      :rust_example => <<~'EOT',
"foo-bar-baz".split_once("-") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.split_once",
    },

    {
      :ruby_method => "split(sep, 2) 末尾から",
      :rust_method => "rsplit_once(sep)",
      :ruby_example => <<~'EOT',
s = "foo-bar-baz".reverse.split("-", 2)
s.collect(&:reverse).reverse # =>
  EOT
      :rust_example => <<~'EOT',
"foo-bar-baz".rsplit_once("-") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.rsplit_once",
    },

    {
      :ruby_method => "scan",
      :rust_method => "matches",
      :ruby_example => <<~'EOT',
"_56_".scan(/\d/) # =>
  EOT
      :rust_example => <<~'EOT',
"_56_".matches(char::is_numeric).collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "予想に反して1文字づつ返ってくる",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.matches",
    },

    {
      :ruby_method => "reverse.scan",
      :rust_method => "rmatches",
      :ruby_example => <<~'EOT',
"_56_".reverse.scan(/\d/) # =>
  EOT
      :rust_example => <<~'EOT',
"_56_".rmatches(char::is_numeric).collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.rmatches",
    },

    {
      :ruby_method => "start_with?",
      :rust_method => "starts_with",
      :ruby_example => <<~EOT,
"abcd".start_with?("ab") # =>
  EOT
      :rust_example => <<~EOT,
"abcd".starts_with("ab") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.starts_with",
    },
    {
      :ruby_method => "end_with?",
      :rust_method => "ends_with",
      :ruby_example => <<~EOT,
"abcd".end_with?("cd") # =>
  EOT
      :rust_example => <<~EOT,
"abcd".ends_with("cd") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.ends_with",
    },

    {
      :ruby_method => "ascii_only?",
      :rust_method => "is_ascii",
      :ruby_example => <<~EOT,
"foo".ascii_only? # =>
  EOT
      :rust_example => <<~EOT,
"foo".is_ascii() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.is_ascii",
    },

    {
      :ruby_method => "index",
      :rust_method => "find",
      :ruby_example => <<~EOT,
s = "abcdabcd"
s.index("c")                   # =>
s.index("cd")                  # =>
s.chars.index { |e| e == 'c' } # =>
  EOT
      :rust_example => <<~EOT,
let s = "abcdabcd";
s.find('c')           // =>
s.find("cd")          // =>
s.find(|e| e == 'c')  // =>
  EOT
      :rust_feature => nil,
      :desc => "xxx, xxx_by, xxx_by_key シリーズのように引数の型が変わるたびに異なるメソッドになるのが Rust のスタイルかと思いきや、このメソッドはいろんな引数に対応していてありがたい",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.find",
    },

    {
      :ruby_method => "rindex",
      :rust_method => "rfind",
      :ruby_example => <<~EOT,
s = "abcdabcd"
s.rindex("c")                   # =>
s.rindex("cd")                  # =>
s.chars.rindex { |e| e == 'c' } # =>
  EOT
      :rust_example => <<~EOT,
let s = "abcdabcd";
s.rfind('c')           // =>
s.rfind("cd")          // =>
s.rfind(|e| e == 'c')  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.rfind",
    },

    {
      :ruby_method => "strip 類似",
      :rust_method => "trim_matches",
      :ruby_example => <<~'EOT',
"56foo78".sub(/\A\d+(.*?)\d*\z/, '\1') # =>
  EOT
      :rust_example => <<~EOT,
"56foo78".trim_matches(char::is_numeric) // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.trim_matches",
    },
    {
      :ruby_method => "lstrip 類似",
      :rust_method => "trim_start_matches",
      :ruby_example => <<~'EOT',
"56foo78".sub(/\A\d+/, "") # =>
  EOT
      :rust_example => <<~EOT,
"56foo78".trim_start_matches(char::is_numeric) // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.trim_start_matches",
    },
    {
      :ruby_method => "rstrip 類似",
      :rust_method => "trim_end_matches",
      :ruby_example => <<~'EOT',
"56foo78".sub(/\d+\z/, "") # =>
  EOT
      :rust_example => <<~EOT,
"56foo78".trim_end_matches(char::is_numeric) // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.trim_end_matches",
    },
    {
      :ruby_method => "delete_prefix",
      :rust_method => "strip_prefix",
      :ruby_example => <<~EOT,
"56foo56".delete_prefix("56") # =>
  EOT
      :rust_example => <<~EOT,
"56foo56".strip_prefix("56") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.strip_prefix",
    },
    {
      :ruby_method => "delete_suffix",
      :rust_method => "strip_suffix",
      :ruby_example => <<~EOT,
"56foo56".delete_suffix("56") # =>
  EOT
      :rust_example => <<~EOT,
"56foo56".strip_suffix("56") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.strip_suffix",
    },

    {
      :ruby_method => "casecmp?(other)",
      :rust_method => "eq_ignore_ascii_case",
      :ruby_example => <<~'EOT',
"Föö".casecmp?("föö") # =>
  EOT
      :rust_example => <<~'EOT',
"Föö".eq_ignore_ascii_case("föö") // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.eq_ignore_ascii_case",
    },

    {
      :ruby_method => "upcase",
      :rust_method => "to_uppercase",
      :ruby_example => <<~'EOT',
"aAöÖ❤".upcase # =>
  EOT
      :rust_example => <<~'EOT',
"aAöÖ❤".to_uppercase() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.to_uppercase",
    },
    {
      :ruby_method => "downcase",
      :rust_method => "to_lowercase",
      :ruby_example => <<~'EOT',
"aAöÖ❤".downcase # =>
  EOT
      :rust_example => <<~'EOT',
"aAöÖ❤".to_lowercase() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.to_lowercase",
    },

    {
      :ruby_method => %(tr("a-z", "A-Z")),
      :rust_method => "to_ascii_uppercase",
      :ruby_example => <<~'EOT',
"aAöÖ❤".tr("a-z", "A-Z") # =>
  EOT
      :rust_example => <<~'EOT',
"aAöÖ❤".to_ascii_uppercase() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.to_ascii_uppercase",
    },
    {
      :ruby_method => %(tr("A-Z", "a-z")),
      :rust_method => "to_ascii_lowercase",
      :ruby_example => <<~'EOT',
"aAöÖ❤".tr("A-Z", "a-z") # =>
  EOT
      :rust_example => <<~'EOT',
"aAöÖ❤".to_ascii_lowercase() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.to_ascii_lowercase",
    },

    {
      :ruby_method => %(tr!("a-z", "A-Z")),
      :rust_method => "make_ascii_uppercase",
      :ruby_example => <<~'EOT',
s = "aAöÖ❤"
s.tr!("a-z", "A-Z")
s # =>
  EOT
      :rust_example => <<~'EOT',
let mut s = String::from("aAöÖ❤");
s.make_ascii_uppercase();
s // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.make_ascii_uppercase",
    },
    {
      :ruby_method => %(tr!("A-Z", "a-z")),
      :rust_method => "make_ascii_lowercase",
      :ruby_example => <<~'EOT',
s = "aAöÖ❤"
s.tr!("A-Z", "a-z")
s # =>
  EOT
      :rust_example => <<~'EOT',
let mut s = String::from("aAöÖ❤");
s.make_ascii_lowercase();
s // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.make_ascii_lowercase",
    },

    {
      :ruby_method => "?",
      :rust_method => "match_indices",
      :ruby_example => <<~'EOT',
"_56_".chars.filter_map.with_index { |e, i| [i, e] if e.match?(/\d/) } # =>
  EOT
      :rust_example => <<~'EOT',
"_56_".match_indices(char::is_numeric).collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.match_indices",
    },
    {
      :ruby_method => "?",
      :rust_method => "rmatch_indices",
      :ruby_example => <<~'EOT',
"_56_".chars.filter_map.with_index { |e, i| [i, e] if e.match?(/\d/) }.reverse # =>
  EOT
      :rust_example => <<~'EOT',
"_56_".rmatch_indices(char::is_numeric).collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.rmatch_indices",
    },

    {
      :ruby_method => "dump 一部unicode",
      :rust_method => "escape_default",
      :ruby_example => <<~'EOT',
"A🥑\n".dump  # =>
  EOT
      :rust_example => <<~'EOT',
"A🥑\n".escape_default().to_string()    // =>
  EOT
      :rust_feature => nil,
      :desc => "絵文字はユニコードの数字表記になる。ちょうど良い。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.escape_default",
    },
    {
      :ruby_method => "dump 全部unicode",
      :rust_method => "escape_unicode",
      :ruby_example => <<~'EOT',
"A🥑\n".dump  # =>
  EOT
      :rust_example => <<~'EOT',
"A🥑\n".escape_unicode().to_string()    // =>
  EOT
      :rust_feature => nil,
      :desc => "全部ユニコードの数字表記で、改行も a になって余計わからん",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.escape_unicode",
    },

    {
      :ruby_method => "to_s",
      :rust_method => "to_string",
      :ruby_example => <<~'EOT',
  EOT
      :rust_example => <<~'EOT',
"foo".to_string() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.to_string",
    },

    ################################################################################

    {
      :ruby_method => "to_s",
      :rust_method => "as_str",
      :ruby_example => <<~EOT,
"abc".to_s # =>
  EOT
      :rust_example => <<~EOT,
String::from("abc").as_str() // =>
  EOT
      :rust_feature => nil,
      :desc => "String型にしか生えてない。to_string と何が違う？",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.as_str",
    },
    {
      :ruby_method => "to_s 更新用",
      :rust_method => "as_mut_str",
      :ruby_example => <<~EOT,
"abc".to_s # =>
  EOT
      :rust_example => <<~EOT,
let mut x = String::from("abc");
let s = x.as_mut_str(); // let mut と書かなくていいのかな？
s.make_ascii_uppercase();
s // =>

// これと同じだけど、どういうこと？？？
let mut s = String::from("abc");
s.make_ascii_uppercase();
s // =>
  EOT
      :rust_feature => nil,
      :desc => "なんかよくわからないけどそのうちわかるだろう",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_str",
    },

    {
      :ruby_method => %(ary.pack("C*")),
      :rust_method => "from_utf8(ary)",
      :ruby_example => <<~EOT,
puts [240, 159, 144, 178].pack("C*")
  EOT
      :rust_example => <<~EOT,
String::from_utf8(vec![240, 159, 144, 178]) // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.from_utf8",
    },
    {
      :ruby_method => %(ary.pack("C*").scrub),
      :rust_method => "from_utf8_lossy(ary)",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let v = vec![102, 111, 111, 129, 98, 97, 114];
String::from_utf8_lossy(&v) // =>
  EOT
      :rust_feature => nil,
      :desc => "129 は無効な文字なので � になる",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.from_utf8_lossy",
    },

    {
      :ruby_method => "new(capacity: xxx)",
      :rust_method => "with_capacity(xxx)",
      :ruby_example => <<~EOT,
s = String.new(capacity: 65535)
s  # =>
# capacity 見れんの？
  EOT
      :rust_example => <<~EOT,
let s = String::with_capacity(65535);
s            // =>
s.capacity() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.with_capacity",
    },
    {
      :ruby_method => "?",
      :rust_method => "reserve(size)",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.capacity() // =>
s.reserve(65535);
s.capacity() // =>
  EOT
      :rust_feature => nil,
      :desc => "あとから容量を確保する。キリの良い単位で確保するので指定よりも多く確保することもある。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.reserve",
    },
    {
      :ruby_method => "?",
      :rust_method => "shrink_to_fit",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.capacity() // =>
s.reserve(65535);
s.capacity() // =>
s.shrink_to_fit();
s.capacity() // =>
  EOT
      :rust_feature => nil,
      :desc => "reserve の逆でメモリを切り詰める",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.shrink_to_fit",
    },

    {
      :ruby_method => "?",
      :rust_method => "into_raw_parts",
      :ruby_example => <<~'EOT',
  EOT
      :rust_example => <<~'EOT',
let s = String::from("foo");
let (ptr, len, cap) = s.into_raw_parts();
ptr // =>
len // =>
cap // =>
  EOT
      :rust_feature => "#![feature(vec_into_raw_parts)]",
      :desc => "文字列をさらにラップしているらしい",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.into_raw_parts",
    },

    {
      :ruby_method => "?",
      :rust_method => "from_raw_parts",
      :ruby_example => <<~'EOT',
  EOT
      :rust_example => <<~'EOT',
use std::mem;
let s = String::from("foo");
let mut s = mem::ManuallyDrop::new(s);
s // =>
let ptr = s.as_mut_ptr();
let len = s.len();
let cap = s.capacity();
ptr // =>
len // =>
cap // =>
unsafe {
    let s = String::from_raw_parts(ptr, len, cap);
    s // =>
}
  EOT
      :rust_feature => nil,
      :desc => "自力で文字列作成用？",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.from_raw_parts",
    },

    {
      :ruby_method => "?",
      :rust_method => "into_boxed_str",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let s = String::from("foo");
let x = s.into_boxed_str(); // s から x に所有権移動しちゃってる
x // =>
  EOT
      :rust_feature => nil,
      :desc => "どゆこと？",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.into_boxed_str",
    },

    {
      :ruby_method => "?",
      :rust_method => "is_char_boundary",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let s = "A🥑B";
s.is_char_boundary(0)  // =>
s.is_char_boundary(1)  // =>
s.is_char_boundary(2)  // =>
s.is_char_boundary(3)  // =>
s.is_char_boundary(4)  // =>
s.is_char_boundary(5)  // =>
s.is_char_boundary(6)  // =>
  EOT
      :rust_feature => nil,
      :desc => "指定位置のバイトがUTF-8コードポイントシーケンスの最初のバイトまたは文字列の終わりなら true らしいがピンとこない",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.is_char_boundary",
    },

    {
      :ruby_method => "?",
      :rust_method => "as_ptr",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let s = "foo";
s.as_ptr() // =>
  EOT
      :rust_feature => nil,
      :desc => "ptr はC言語で言うところポインタなのかな",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.as_ptr",
    },
    {
      :ruby_method => "?",
      :rust_method => "as_mut_ptr",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.as_mut_ptr() // =>
  EOT
      :rust_feature => nil,
      :desc => "文字を更新するとき用",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.as_mut_ptr",
    },

  ],
}
