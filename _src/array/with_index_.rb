with_position = -> v {
  Enumerator.new do |y|
    v.each_with_index do |e, i|
      if v.size == 1
        y << [e, :only]
      else
        if i == 0
          pos = :first
        elsif i < v.size - 1
          pos = :middle
        else
          pos = :last
        end
        y << [e, pos]
      end
    end
  end
}

with_position.([5, 6, 7]).to_a  # =>
with_position.([5]).to_a        # =>
