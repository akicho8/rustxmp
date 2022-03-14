sum1 = -> v { v.sum unless v.empty? }
sum1[[5, 6, 7]] # =>
sum1[[]]        # =>
[].inject(:+)   # =>
