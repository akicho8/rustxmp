require "./setup"

Rustxmp::MergeProcessor.new("a", "foo // =>").to_s # => "foo // => a"

output = <<~EOS
a
b
EOS
source = <<~EOS
a // =>
b // =>
c // =>
EOS
puts Rustxmp::MergeProcessor.new(output, source)
# >> a // => a
# >> b // => b
# >> c // => (出力なし)
