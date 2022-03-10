v = [5, 5, 6, 7, 7, 6, 5, 5]
a = v.chunk(&:itself).entries
a.collect(&:first)                                   # => [5, 6, 7, 6, 5]
a.find_all { |_, e| e.length >= 2 }.collect(&:first) # => [5, 7, 5]
