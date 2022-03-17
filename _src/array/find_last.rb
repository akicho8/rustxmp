module Enumerable
  def find_or_last(&block)
    find(&block) || last
  end
end

[5, 6, 7].find_or_last { |e| e == 6 } # =>
[5, 6, 7].find_or_last { |e| e == 0 } # =>
