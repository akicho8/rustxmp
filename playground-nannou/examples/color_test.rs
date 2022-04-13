// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    // https://docs.rs/nannou_core/0.18.0/nannou_core/color/named/index.html
    println!("{:?}", ALICEBLUE);                // => Rgb { red: 240, green: 248, blue: 255, standard: PhantomData }
    println!("{:?}", rgb(0.5, 0.5, 0.5));       // => Rgb { red: 0.5, green: 0.5, blue: 0.5, standard: PhantomData }
    println!("{:?}", rgba(0.5, 0.5, 0.5, 0.5)); // => Alpha { color: Rgb { red: 0.5, green: 0.5, blue: 0.5, standard: PhantomData }, alpha: 0.5 }
    println!("{:?}", gray(0.5));                // => Rgb { red: 0.5, green: 0.5, blue: 0.5, standard: PhantomData }
    println!("{:?}", hsl(0.5, 0.5, 0.5));       // => Hsl { hue: RgbHue(180.0), saturation: 0.5, lightness: 0.5, space: PhantomData }
    println!("{:?}", hsla(0.5, 0.5, 0.5, 0.5)); // => Alpha { color: Hsl { hue: RgbHue(180.0), saturation: 0.5, lightness: 0.5, space: PhantomData }, alpha: 0.5 }

    println!("{:?}", ALICEBLUE.red()); // =>
    println!("{:?}", ALICEBLUE.green()); // =>
    println!("{:?}", ALICEBLUE.blue());  // =>
}
