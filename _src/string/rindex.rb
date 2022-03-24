s = "abcdabcd"
s.rindex("c")                   # =>
s.rindex("cd")                  # =>
s.chars.rindex { |e| e == 'c' } # =>
