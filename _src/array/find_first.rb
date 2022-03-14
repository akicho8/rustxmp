v = [5, 6, 7]
v.find { |e| e == 6 } || v.first # =>
v.find { |e| e == 0 } || v.first # =>
