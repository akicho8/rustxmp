[5, 6, 7, 8].filter_map { |e| e * 10 if e.even? } # =>
[5, 6, 7, 8].find_all(&:even?).map { |e| e * 10 } # =>
