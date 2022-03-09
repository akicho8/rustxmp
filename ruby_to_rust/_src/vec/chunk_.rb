[5, 6, 0, 7, 8, 0, 9].reverse.chunk { |e| e == 0 ? nil : true }.map { |e| e.last.reverse } # =>
