v = [97, 66, 99, 68]
v.replace(v.pack("c*").upcase.unpack("c*"))
v  # =>

v = "aBcD"
v.upcase!
v  # =>
