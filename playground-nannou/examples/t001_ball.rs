// 参考
// https://github.com/nannou-org/nannou/blob/master/examples/rust_basics/7_modules/ball.rs

use nannou::prelude::*;

pub struct Ball {
    pub position: Point2,
    color: Srgb<u8>,
    alive_counter: f32,
}

impl Ball {
    pub fn new(color: Srgb<u8>) -> Self {
        Ball {
            color: color,
            position: pt2(0.0, 0.0),
            alive_counter: 0.0,
        }
    }

    pub fn update(&mut self, app: &App) {
        self.position = pt2(app.mouse.x, app.mouse.y);
        self.alive_counter += 1.0;
    }

    pub fn display(&self, draw: &Draw) {
        let x = self.position.x + (self.alive_counter * 0.10).cos() * 50.0;
        let y = self.position.y + (self.alive_counter * 0.10).sin() * 50.0;
        // let x = map_range(x, -1.0, 1.0, boundary.left(), boundary.right());
        // let y = map_range(y, -1.0, 1.0, boundary.bottom(), boundary.top());
        draw.ellipse()
            .x_y(x, y)
            .radius(8.0)
            .color(self.color);
    }
}
