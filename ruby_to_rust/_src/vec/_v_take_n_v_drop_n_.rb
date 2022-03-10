v = [5, 6, 7, 8]
n = 2
[v.take(n), v.drop(n)]  # =>

v.partition.with_index { |_, i| i < n } # =>
