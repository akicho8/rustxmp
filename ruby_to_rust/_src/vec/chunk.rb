v = [5, 6, 0, 7, 8, 0, 9]
v.chunk { |e| e == 0 ? nil : true }.map(&:last) # =>

require "active_support/core_ext/array/grouping"
v.split(0) # =>

"5607809".split("0")  # =>
