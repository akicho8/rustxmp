s = "foo-bar-baz".reverse.split("-", 2)
s.collect(&:reverse).reverse # =>
