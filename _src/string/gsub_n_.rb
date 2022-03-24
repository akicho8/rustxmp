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
