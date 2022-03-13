v = [5, 6, 0, 7, 8, 0, 9]
v.reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # =>
