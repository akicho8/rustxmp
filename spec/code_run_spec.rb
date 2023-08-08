require "spec_helper"

module Rustxmp
  describe CodeRun do
    it "default" do
      str = CodeRun.new(source_code: <<~EOS).call
fn main() {
    1 + 2; // =>
}
EOS
      assert { str == <<~EOS }
3
EOS
    end
  end
end
