module Enumerable
  def find_or_first(&block)
    find(&block) || first
  end
end

[5, 6, 7].find_or_first { |e| e == 6 } # =>
[5, 6, 7].find_or_first { |e| e == 0 } # =>
