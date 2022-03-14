product1 = -> v { v.inject(:*)  }
product1[[5, 2, 10]] # =>
product1[[]]         # =>
