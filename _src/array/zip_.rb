module Enumerable
  def interleave_shortest(*others)
    enums = [self, *others].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        enums.each do |e|
          y << e.next
        end
      end
    end
  end
end

[5, 6, 7, 8].interleave_shortest([100, 200]).to_a  # => [5, 100, 6, 200, 7]
[100, 200].interleave_shortest([5, 6, 7, 8]).to_a  # => [100, 5, 200, 6]
