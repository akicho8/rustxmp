require "active_support/string"
s = " foo\r\n bar　baz\n"
s.squish # => "foo bar baz"
