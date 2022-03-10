v = [5, 5, 6, 7, 7, 6, 5, 5]
a = v.chunk(&:itself).entries
a.collect(&:first)                                   # =>
a.find_all { |_, e| e.length >= 2 }.collect(&:first) # =>
