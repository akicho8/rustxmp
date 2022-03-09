"5607809".split("0", 2)  # =>

v = [5, 6, 0, 7, 8, 0, 9]
n = 2
v = v.slice_after { |e| e == 0 }
v = [
  *v.take(n - 1).collect { |e| e[..-2] },
  v.drop(n - 1).flatten(1),
]
v # => [[5, 6], [7, 8, 0, 9]]
