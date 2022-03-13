[5, 6, 7, 8].find_all(&:even?).collect { |e| e * 10 } # =>
[5, 6, 7, 8].filter_map { |e| e * 10 if e.even? }     # =>
