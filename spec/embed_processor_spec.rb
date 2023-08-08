require "spec_helper"

module Rustxmp
  describe EmbedProcessor do
    it "default" do
      str = EmbedProcessor.new(source_code: <<~EOS).call
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

    it "nannou" do
      str = EmbedProcessor.new(source_code: <<~EOS).call
// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    let r = Rect::from_w_h(100.0f32, 100.0f32);
    r.xy();                       // =>
    println!("{:?}", r.xy());     // =>
}
EOS
      assert { str == <<~EOS }
// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    let r = Rect::from_w_h(100.0f32, 100.0f32);
    r.xy();                       // => Vec2(0.0, 0.0)
    println!("{:?}", r.xy());     // => Vec2(0.0, 0.0)
}
EOS
    end
  end
end
