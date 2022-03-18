module Enumerable
  def with_position
    collect.with_index do |e, i|
      if size == 1
        pos = :only
      else
        if i == 0
          pos = :first
        elsif i < size - 1
          pos = :middle
        else
          pos = :last
        end
      end
      [e, pos]
    end
  end
end

[5, 6, 7].with_position  # =>
[5].with_position        # =>
