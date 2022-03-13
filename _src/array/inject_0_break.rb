sum = [5, 6, 7].inject(0) {|a, e|
  if a >= 10
    break
  end
  a + e
}
sum # =>
