it = [4, 6].to_enum
[2, 3].all? { |a; b| b = it.next; a + a == b }             # =>
[2, 3].each.with_index.all? { |e, i| e + e == [4, 6][i] }  # =>
[2, 3].collect { |e| e + e } == [4, 6]                     # =>
