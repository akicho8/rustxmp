class Array
  def tuples(n)
    take((size / n) * n).each_slice(n)
  end
end

[5, 6, 7, 8, 9].tuples(2).to_a # =>
