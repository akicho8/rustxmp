STRING_LIST = {
  :name => "string",
  :doc_urls => [
    "https://doc.rust-lang.org/std/string/struct.String.html",
  ],
  :list => [
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
      :ruby_method => %(to_s),
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
      :ruby_method => %(to_s),
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
      :ruby_method => %(to_s),
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
      :desc => nil,
      :doc_url => "https://doc.rust-lang.org/std/string/struct.String.html#method.push_str",
    },
  ],
}
