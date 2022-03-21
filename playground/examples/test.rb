# # v = s.bytes     # => [102, 111, 111, 129, 98, 97, 114]
# # v.pack("C*").bytes         # => [102, 111, 111, 129, 98, 97, 114]
# # v.pack("C*").bytes         # => [102, 111, 111, 129, 98, 97, 114]
# puts s
# # puts v.pack("C*")
# puts "foo\x81bar"

# puts "foo\x81bar".scrub

a = "a"
a.concat("b")                   # => "ab"
a                               # => "ab"
