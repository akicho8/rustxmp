module Enumerable
  def interleave(*args)
    enums = [self, *args].collect(&:to_enum)
    Enumerator.new do |y|
      loop do
        exist = false
        enums.each do |e|
          begin
            y << e.next
            exist = true
          rescue StopIteration
          end
        end
        unless exist
          break
        end
      end
    end
  end
end

[5, 6, 7, 8].interleave([100, 200]).to_a  # => [5, 100, 6, 200, 7, 8]
[100, 200].interleave([5, 6, 7, 8]).to_a  # => [100, 5, 200, 6, 7, 8]
