require "spec_helper"

module Rustxmp
  describe CodeRun do
    it "default" do
      str = CodeRun.new(<<~EOS).call
fn main() {
    1 + 2; // =>
}
EOS
      assert { str == <<~EOS }
3
EOS
    end

    it "nannou" do
      str = CodeRun.new(<<~EOS).call
// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    let r = Rect::from_w_h(100.0f32, 100.0f32);
    r.xy();                       // =>
    println!("{:?}", r.xy());     // =>
}
EOS
      assert { str == <<~EOS }
Vec2(0.0, 0.0)
Vec2(0.0, 0.0)
EOS
    end
  end
end
