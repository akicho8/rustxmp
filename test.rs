// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    let r = Rect::from_w_h(100.0f32, 100.0f32);
    r.xy();                     // =>
    println!("{:?}", r.xy());     // =>
    Rect::from_w_h(100.0f32, 100.0f32); // =>
}
