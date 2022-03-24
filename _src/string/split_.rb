"foo-bar-baz".reverse.split("-", 2).collect(&:reverse) # => ["baz", "foo-bar"]
