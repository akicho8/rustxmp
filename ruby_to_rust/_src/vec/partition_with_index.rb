v = [5, 6, 7, 8]
v.partition.with_index { |_, i| i < 2 } # =>

[v.take(2), v.drop(2)]                  # =>
