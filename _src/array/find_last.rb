v = [5, 6, 7]
v.find { |e| e == 6 } || v.last # =>
v.find { |e| e == 0 } || v.last # =>
