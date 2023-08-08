// #[allow(unused_imports)]
// use itertools::Itertools;

use nannou::prelude::*;

struct MovablePoint {
    position: Vec2,
    active_p: bool,
    velocity: Vec2,
}

const POINT_DISTANCE: f32 = 8.0;

impl MovablePoint {
    fn new(position: Vec2) -> Self {
        MovablePoint {
            position: position,
            active_p: false,
            velocity: vec2(0.0, 0.0),
        }
    }

    fn move_run(&mut self, app: &App) -> bool {
        if self.active_p {
            let new_pos = self.mouse_vec(&app);
            self.velocity = new_pos - self.position;
            self.position = new_pos;
            true
        } else {
            false
        }
    }

    fn click_check(&mut self, app: &App) -> bool {
        let mut retv = false;
        if self.is_near(&app) {
            if app.mouse.buttons.left().is_down() {
                self.active_p = true;
                retv = true;
            }
        }
        retv
    }

    fn draw(&self, app: &App, draw: &Draw) {
        if self.active_p || (!self.active_p && self.is_near(&app)) {
            draw.ellipse()
                .xy(self.position)
                .radius(POINT_DISTANCE)
                .no_fill()
                .stroke_weight(1.0)
                .stroke(DODGERBLUE);
        }
    }

    fn is_near(&self, app: &App) -> bool {
        self.position.distance(self.mouse_vec(&app)) < POINT_DISTANCE
    }

    fn mouse_vec(&self, app: &App) -> Vec2 {
        vec2(app.mouse.x, app.mouse.y)
    }
}

pub struct EasyVec {
    p1: MovablePoint,
    p2: MovablePoint,
    p3: MovablePoint,
}

impl EasyVec {
    pub fn new(a: Vec2, b: Vec2) -> Self {
        EasyVec {
            p1: MovablePoint::new(a),
            p2: MovablePoint::new(b),
            p3: MovablePoint::new(a.lerp(b, 0.5)),
        }
    }

    pub fn update(&mut self, app: &App) {
        let _ = self.p1.move_run(&app) ||
            self.p2.move_run(&app) ||
            self.p3.move_run(&app) ||
            self.p1.click_check(&app) ||
            self.p2.click_check(&app) ||
            self.p3.click_check(&app);

        if self.p3.active_p {
            self.p1.position += self.p3.velocity;
            self.p2.position += self.p3.velocity;
        } else {
            self.p3.position = self.p1.position.lerp(self.p2.position, 0.5);
        }

        if app.mouse.buttons.left().is_up() {
            self.p1.active_p = false;
            self.p2.active_p = false;
            self.p3.active_p = false;
        }
    }

    pub fn draw(&self, app: &App, draw: &Draw) {
        self.p1.draw(&app, &draw);
        self.p2.draw(&app, &draw);
        self.p3.draw(&app, &draw);

        draw.arrow()
            .points(self.p1.position, self.p2.position)
            .color(DODGERBLUE);
    }
}

// struct Model {
//     easy_vec1: EasyVec,
//     easy_vec2: EasyVec,
// }
//
// impl Model {
// }
//
// fn main() {
//     nannou::app(model).event(event).update(update).run();
// }
//
// fn model(app: &App) -> Model {
//     app.set_loop_mode(LoopMode::Wait);
//
//     app.new_window()
//         .size(640, 480)
//         .view(view)
//         .build()
//         .unwrap();
//
//     Model {
//         easy_vec1: EasyVec::new(vec2(0.0, 0.0), vec2(100.0, 100.0)),
//         easy_vec2: EasyVec::new(vec2(0.0, 0.0), vec2(100.0,  50.0)),
//     }
// }
//
// fn event(app: &App, _model: &mut Model, event: Event) {
//     if let Event::WindowEvent {
//         simple: Some(KeyPressed(key)),
//         ..
//     } = event
//     {
//         match key {
//             Key::Q     => app.quit(),
//             _ => {}
//         }
//     }
// }
//
// fn update(app: &App, model: &mut Model, _update: Update) {
//     model.easy_vec1.update(&app);
//     model.easy_vec2.update(&app);
// }
//
// fn view(app: &App, model: &Model, frame: Frame) {
//     let draw = app.draw();
//     frame.clear(hsl(240.0 / 360.0, 1.0, 0.01));
//     model.easy_vec1.draw(&app, &draw);
//     model.easy_vec2.draw(&app, &draw);
//     draw.to_frame(app, &frame).unwrap();
// }
