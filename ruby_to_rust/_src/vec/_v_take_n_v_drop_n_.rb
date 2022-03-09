v = [5, 6, 7, 8]
[v.take(2), v.drop(2)]  # =>

v.partition.with_index { |_, i| i < 2 } # =>
