require "spec_helper"

module Rustxmp
  describe EmbedProcessor do
    it "default" do
      str = EmbedProcessor.new(<<~EOS).call
fn main() {
    1 + 2; // =>
}
EOS
      assert { str == <<~EOS }
fn main() {
    1 + 2; // => 3
}
EOS
    end
  end
end
