module Enumerable
  def powerset
    (0..size).collect_concat do |i|
      combination(i).entries
    end
  end
end

[5, 6, 7].powerset # =>
