[5, 6, 7, 8].each_slice(2).collect(&:first) # =>

v = [5, 6, 7, 8]
v.values_at(*0.step(v.size - 1, by: 2)) # =>
