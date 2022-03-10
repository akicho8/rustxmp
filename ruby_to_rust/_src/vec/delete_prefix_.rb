a = [5, 6, 7, 8]
b = [5, 6]
if a.first(b.size) == b
  a.drop(b.size)  # =>
end

"5678".delete_prefix("56")  # =>
