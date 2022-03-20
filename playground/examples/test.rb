module Enumerable
  def pad_using(max, &block)
    [*self, *(size...max).collect(&block)]
  end
end

(100..102).pad_using(6) { |i| i * 2 }  # => [100, 101, 102, 6, 8, 10]
