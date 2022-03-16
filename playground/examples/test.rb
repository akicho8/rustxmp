#     // println!("{:?}", [5, 6, 7]).iter().chunks(2).collect::<Vec<_>>());
#     println!("{:?}", [5, 6, 7].iter().tuple_windows::<(_, _)>().collect::<Vec<_>>());
#     println!("{:?}", [5, 6, 7].iter().circular_tuple_windows::<(_, _)>().collect::<Vec<_>>());
#     println!("{:?}", [5, 6, 7, 8, 9].iter().tuples::<(_, _)>().collect::<Vec<_>>());
#
# [(5, 6), (6, 7)]
# [(5, 6), (6, 7), (7, 5)]
# [(5, 6), (7, 8)]

# [5, 6, 7].each_cons(2).entries          # => [[5, 6], [6, 7]]

# class Array
#   def tuple_windows(n)
#     (size - (n - 1)).times.collect do |i|
#       n.times.collect { |j| at(i + j) }
#     end
#   end
# end

[5, 6, 7].each_cons(2).to_a # => [[5, 6], [6, 7]]

class Array
  def circular_tuple_windows(n)
    size.times.collect do |i|
      n.times.collect { |j| at((i + j).modulo(size)) }
    end
  end
end

[5, 6, 7].circular_tuple_windows(2) # => [[5, 6], [6, 7], [7, 5]]

class Array
  def tuples(n)
    take((size / n) * n).each_slice(n)
  end
end

[5, 6, 7, 8, 9].tuples(2).to_a # => [[5, 6], [7, 8]]
