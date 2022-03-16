zip_longest = -> a, b {
  a = a.to_enum
  b = b.to_enum
  none = Object.new
  Enumerator.new do |y|
    loop do
      l = a.next rescue none
      r = b.next rescue none
      case
      when l != none && r != none
        y << [:both, l, r]
      when l != none
        y << [:left, l]
      when r != none
        y << [:right, r]
      else
        break
      end
    end
  end
}

zip_longest.([5, 6, 7, 8], [100, 200]).to_a  # => [[:both, 5, 100], [:both, 6, 200], [:left, 7], [:left, 8]]
zip_longest.([100, 200], [5, 6, 7, 8]).to_a  # => [[:both, 100, 5], [:both, 200, 6], [:right, 7], [:right, 8]]
