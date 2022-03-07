require "./generator"
require "./iterator_list"
require "./vec_list"

[
  { :list => ITERATOR_LIST, :name => "iterator", :target => "nightly", },
  { :list => VEC_LIST,      :name => "vec",      :target => "nightly", },
].each do |e|
  Generator.new(e).run
end
