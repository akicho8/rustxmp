# -*- coding: utf-8; compile-command: "./ruby_to_rust runner -c string -r -1" -*-

STRING_LIST = {
  :name => "string",
  :doc_urls => [
    "https://doc.rust-lang.org/std/string/struct.String.html",
  ],
  :list => [
    {
      :ruby_method => "chars",
      :rust_method => "chars",
      :ruby_example => <<~EOT,
"Aあ🐲".chars       # =>
"Aあ🐲".codepoints  # =>
  EOT
      :rust_example => <<~EOT,
String::from("Aあ🐲").chars() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.chars",
    },

    {
      :ruby_method => "chars.each.with_index に類似",
      :rust_method => "char_indices",
      :ruby_example => <<~EOT,
"Aあ🐲".chars.each.with_index.entries # =>
  EOT
      :rust_example => <<~EOT,
String::from("Aあ🐲").char_indices().collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "インデックスはただの連番ではなく、1バイト毎の配列としてみたときのペアの文字がある位置になっている",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.char_indices",
    },

    {
      :ruby_method => "length",
      :rust_method => "chars.count",
      :ruby_example => <<~EOT,
"🐲".length  # =>
  EOT
      :rust_example => <<~EOT,
String::from("🐲").chars().count()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.chars",
    },
    {
      :ruby_method => "bytes.count",
      :rust_method => "len",
      :ruby_example => <<~EOT,
"🐲".bytes.count  # =>
  EOT
      :rust_example => <<~EOT,
String::from("🐲").len()  // =>
  EOT
      :rust_feature => nil,
      :desc => "バイト数を返す。間違えそう。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.len",
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
String::from("").is_empty()  // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.is_empty",
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
      :ruby_method => %(bytes),
      :rust_method => "into_bytes",
      :ruby_example => <<~EOT,
"abc".bytes # =>
  EOT
      :rust_example => <<~EOT,
String::from("abc").into_bytes() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.into_bytes",
    },
    {
      :ruby_method => %(bytes),
      :rust_method => "as_bytes",
      :ruby_example => <<~EOT,
"abc".bytes # =>
  EOT
      :rust_example => <<~EOT,
String::from("abc").as_bytes() // =>
  EOT
      :rust_feature => nil,
      :desc => "into_bytes と何が違うんだよ",
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
      :ruby_method => "to_s",
      :rust_method => "as_str",
      :ruby_example => <<~EOT,
"abc".to_s # =>
  EOT
      :rust_example => <<~EOT,
String::from("abc").as_str() // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
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
      :ruby_method => "concat",
      :rust_method => "push",
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
      :desc => "文字用",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.push",
    },
    {
      :ruby_method => "concat",
      :rust_method => "push_str",
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
      :desc => "文字列用。push で統一してくれんかな(小声)",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.push_str",
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
      :ruby_method => "slice!(n..)",
      :rust_method => "truncate(n)",
      :ruby_example => <<~EOT,
s = "foobar"
s.slice!(3..) # =>
s             # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foobar");
s.truncate(3) // =>
s             // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
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
      :ruby_method => "find_all に類似 破壊的",
      :rust_method => "retain(str)",
      :ruby_example => <<~EOT,
class String
  def retain(&block)
    replace(each_char.find_all(&block).join)
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
      :desc => "この例では remove_matches(\"_\") のほうが良い",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.retain",
    },
    {
      :ruby_method => "insert",
      :rust_method => "insert",
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
      :ruby_method => "insert",
      :rust_method => "insert_str",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.insert_str",
    },

    {
      :ruby_method => "slice!(i..)",
      :rust_method => "split_off(i)",
      :ruby_example => <<~EOT,
s = "foo"
s.slice!(1..)  # =>
s              # =>
  EOT
      :rust_example => <<~EOT,
let mut s = String::from("foo");
s.split_off(1) // =>
s              // =>
  EOT
      :rust_feature => nil,
      :desc => nil,
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
let s = String::from("A🧡B");
s.is_char_boundary(0)  // =>
s.is_char_boundary(1)  // =>
s.is_char_boundary(2)  // =>
s.is_char_boundary(3)  // =>
s.is_char_boundary(4)  // =>
s.is_char_boundary(5)  // =>
s.is_char_boundary(6)  // =>
  EOT
      :rust_feature => nil,
      :desc => "指定インデックスのバイトがUTF-8コードポイントシーケンスの最初のバイトまたは文字列の終わりなら true らしいがピンとこない",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.is_char_boundary",
    },

    {
      :ruby_method => "?",
      :rust_method => "as_ptr",
      :ruby_example => <<~EOT,
  EOT
      :rust_example => <<~EOT,
let s = String::from("foo");
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
    {
      :ruby_method => "slice",
      :rust_method => "get",
      :ruby_example => <<~EOT,
s = "foobar"
s.slice(2..2) # =>
s.slice(...2) # =>
s.slice(2...) # =>
  EOT
      :rust_example => <<~EOT,
let s = String::from("foobar");
s.get(2..=2)  // =>
s.get(..2)    // =>
s.get(2..)    // =>
  EOT
      :rust_feature => nil,
      :desc => "引数は範囲のみ。バイト単位で位置指定なので全角が含まれるときなどは注意。",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.get",
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.get_mut",
    },

    {
      :ruby_method => "split",
      :rust_method => "split_whitespace",
      :ruby_example => <<~'EOT',
" foo\r\n bar　baz\n".gsub(/\p{Space}+/, " ").split # =>
  EOT
      :rust_example => <<~'EOT',
let s = String::from(" foo\r\n bar　baz\n");
s.split_whitespace().collect::<Vec<_>>() // =>
  EOT
      :rust_feature => nil,
      :desc => "Rust の方は全角スペースに対応している",
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.split_whitespace",
    },

  ],
}
