sum = [5, 5, 5].inject(0) {|a, e|
  if a >= 10
    break
  end
  a + e
}
sum # =>
