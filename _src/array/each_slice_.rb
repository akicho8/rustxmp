v = [5, 6, 7, 8, 9]
v.reverse.each_slice(2).collect(&:reverse)  # =>
