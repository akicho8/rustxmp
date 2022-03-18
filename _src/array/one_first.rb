module Enumerable
  def at_most_one
    one? && first
  end
end

[5, 6].at_most_one # =>
[5].at_most_one    # =>
[].at_most_one     # =>
