product1 = -> v { v.inject(1, :*) unless v.empty? }
product1[[5, 2, 10]] # =>
product1[[]]         # =>
