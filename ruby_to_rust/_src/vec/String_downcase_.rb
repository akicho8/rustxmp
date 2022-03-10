v = [97, 66, 99, 68]
v.replace(v.pack("c*").downcase.unpack("c*"))
v  # =>

v = "aBcD"
v.downcase!
v  # =>
