"_56_".chars.filter_map.with_index { |e, i| [i, e] if e.match?(/\d/) }.reverse # =>
