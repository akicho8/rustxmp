a = [5, 6, 7, 8]
b = [7, 8]
if a.last(b.size) == b
  a.take(a.size - b.size)      # =>
end

"5678".delete_suffix("78")      # =>
