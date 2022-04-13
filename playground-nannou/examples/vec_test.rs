// rustxmp_playground: "nannou"

use nannou::prelude::*;

// use nannou::cgmath::prelude::*;
// use nannou::cgmath::Rad;

fn main() {
    println!("{:?}", vec2(2.0, 2.0).angle());  // => 0.7853982
    println!("{:?}", vec2(0.0, 2.0).angle());  // => 1.5707963
    println!("{:?}", vec2(-2.0, 2.0).angle()); // => 2.3561945

    println!("{:?}", 2.0.atan2(2.0));  // => 0.7853981633974483
    println!("{:?}", 2.0.atan2(0.0));  // => 1.5707963267948966
    println!("{:?}", 2.0.atan2(-2.0)); // => 2.356194490192345

    // let angle: Rad<f32> = Rad::atan(0.5);
    // println!("{:?}", angle);    // =>
}
