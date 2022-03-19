module Enumerable
  def tee
    [to_enum, to_enum]
  end
end

a, b = [5, 6, 7].tee
a.entries  # =>
b.entries  # =>
