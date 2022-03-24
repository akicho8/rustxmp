class String
  def retain(&block)
    replace(each_char.select(&block).join)
  end
end

s = "f_o_o"
s.retain { |e| e != "_" }
s # => "foo"

s = "f_o_o"
s.delete!("_")
s # => "foo"
