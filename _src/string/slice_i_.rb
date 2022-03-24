s = "foo"
s.slice!(1..)  # =>
s              # =>

s = "foo"
s.byteslice(1...)            # =>
s.replace(s.byteslice(...1))
s                            # =>
