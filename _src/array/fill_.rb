module Enumerable
  def pad_using(n, &block)
    [*self, *(size...n).collect(&block)]
  end
end

(100..102).pad_using(6) { |i| i * 2 } # =>
