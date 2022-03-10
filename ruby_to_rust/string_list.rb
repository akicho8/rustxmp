STRING_LIST = {
  :name => "string",
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
  ],
}
