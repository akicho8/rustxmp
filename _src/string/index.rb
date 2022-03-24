s = "abcdabcd"
s.index("c")                   # =>
s.index("cd")                  # =>
s.chars.index { |e| e == 'c' } # =>
