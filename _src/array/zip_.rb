interleave_shortest = -> a, b {
  enums = [a, b].collect(&:to_enum)
  Enumerator.new do |y|
    loop do
      enums.each do |e|
        y << e.next
      end
    end
  end
}

interleave_shortest.([5, 6, 7, 8], [100, 200]).to_a  # => [5, 100, 6, 200, 7]
interleave_shortest.([100, 200], [5, 6, 7, 8]).to_a  # => [100, 5, 200, 6]
