sum = [5, 6, 7].inject {|a, e|
  if a >= 10
    break
  end
  a + e
}
sum # =>
