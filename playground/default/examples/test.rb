require "pathname"
Pathname.glob("a/**/*.txt,")     # => [#<Pathname:a/b/c/1.txt>, #<Pathname:a/b/c/2.txt>, #<Pathname:a/b/c/3.TXT>]
