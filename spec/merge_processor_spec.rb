require "spec_helper"

module Rustxmp
  describe MergeProcessor do
    it "works" do
output = <<~EOS
a
b
EOS
source = <<~EOS
a // =>
b // =>
c // =>
EOS
      str = Rustxmp::MergeProcessor.new(output, source).to_s
      assert { str == <<~EOS }
a // => a
b // => b
c // => (出力なし)
EOS
    end
  end
end
