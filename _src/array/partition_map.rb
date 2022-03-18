even, odd = [5, 6, 7, 8].partition(&:even?)
even                       # =>
odd.collect { |e| e * 2 }  # =>
