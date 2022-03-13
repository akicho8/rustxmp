it = [5, 6, 7, 8].to_enum
nth = -> n {
  n.times { it.next rescue nil }
  it.next rescue nil
}
nth[1] # => 6
nth[1] # => 8
nth[1] # => nil
