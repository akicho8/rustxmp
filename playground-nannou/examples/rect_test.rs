// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    let win =  Rect { x: Range { start: -512.0, end: 512.0 }, y: Range { start: -384.0, end: 384.0 } };

    let r = Rect::from_w_h(100.0f32, 100.0f32);
    println!("{:?}", r.xy());   // => Vec2(0.0, 0.0)
}
