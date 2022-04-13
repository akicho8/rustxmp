// 色名一覧
// https://docs.rs/nannou_core/0.18.0/nannou_core/color/named/index.html

use nannou::prelude::*;

struct Model {
    any_value1: isize,
    mouse_down: bool,
}

impl Model {
    fn item_change(&mut self, sign: isize) {
        self.any_value1 += sign;
    }
}

fn main() {
    nannou::app(model)
        .event(event)
        .update(update)
        .run();
}

fn model(app: &App) -> Model {
    app.new_window()
        .size(640, 480)
        .mouse_pressed(mouse_pressed)
        .mouse_released(mouse_released)
        .view(view)
        .build()
        .unwrap();

    app.main_window().set_title("Nannou all in one template");

    Model {
        any_value1: 0,
        mouse_down: false,
    }
}

fn event(app: &App, model: &mut Model, event: Event) {
    if let Event::WindowEvent { simple: Some(KeyPressed(key)), .. } = event {
        match key {
            Key::Z => {},
            Key::X => {},
            Key::C => {},
            Key::Space => {},
            Key::Left  => model.item_change(-1),
            Key::Right => model.item_change(1),
            Key::Key3 => app.set_loop_mode(LoopMode::rate_fps(30.0)), // 効いてない
            Key::Key6 => app.set_loop_mode(LoopMode::rate_fps(60.0)), // 効いてない
            Key::Q => app.quit(),
            _ => {}
        }
    }
}

fn mouse_pressed(_app: &App, model: &mut Model, button: MouseButton) {
    match button {
        MouseButton::Left  => model.mouse_down = true,
        MouseButton::Right => {},
        _ => {}
    }

}

fn mouse_released(_app: &App, model: &mut Model, button: MouseButton) {
    match button {
        MouseButton::Left  => model.mouse_down = false,
        MouseButton::Right => {},
        _ => {}
    }
}

fn update(_app: &App, _model: &mut Model, _update: Update) {
    // model.view_rect = app.window_rect().pad(PADDING);
}

fn view(app: &App, model: &Model, frame: Frame) {
    let draw = app.draw();
    let win = app.window_rect();
    // let window = app.main_window();

    // 全消去 (残像なし)
    if true {
        frame.clear(hsl(240.0 / 360.0, 1.0, 0.03));
    }

    // 全消去 (残像あり)
    if false {
        draw.rect().wh(app.window_rect().wh()).rgba(0.0, 0.0, 0.2, 0.1);
    }

    // 十字線
    if true {
        let crosshair_color = DARKBLUE;
        let ends = [
            win.mid_top(),
            win.mid_right(),
            win.mid_bottom(),
            win.mid_left(),
        ];
        ends.iter().for_each(|&end| {
            draw.arrow()
                .start_cap_round()
                .head_length(16.0)
                .head_width(8.0)
                .color(crosshair_color)
                .end(end);
        })
    }

    // 中心からマウスまでライン
    if true {
        let mouse = app.mouse.position();
        let center = vec2(0.0, 0.0);
        draw.line().color(DARKBLUE).points(center, mouse);
    }

    // 左上のいい感じのところに長方形
    if true {
        let r = Rect::from_w_h(100.0, 100.0);
        let r = r.top_left_of(win.pad(30.0)); // 余白
        draw.rect()
            .xy(r.xy())
            .wh(r.wh())
            .hsla(1.0, 1.0, 1.0, 0.0)
            .stroke_weight(1.0)
            .stroke(DARKBLUE);
    }

    // 右下のいい感じのところに円
    if true {
        let r = Rect::from_w_h(100.0, 100.0);
        let r = r.bottom_right_of(win.pad(30.0)); // 余白
        draw.ellipse()
            .xy(r.xy())
            .wh(r.wh())
            .hsla(1.0, 1.0, 1.0, 0.0)
            .stroke_weight(1.0)
            .stroke(DARKBLUE);
    }

    // 右下のいい感じのところに円
    if true {
        let r = Rect::from_w_h(100.0, 100.0);
        let r = r.bottom_left_of(win.pad(30.0)); // 余白
        draw.tri()
            .points(r.bottom_left(), r.mid_top(), r.bottom_right())
            .hsla(1.0, 1.0, 1.0, 0.0)
            .stroke_weight(1.0)
            .stroke(DARKBLUE);
    }

    // 中央からマウスに矢印
    if true {
        draw.arrow()
            .start_cap_round()
            .weight(3.0)
            .points(vec2(0.0, 0.0), app.mouse.position())
            .color(DARKBLUE);
    }

    // マウス座標をマウス位置に表示
    if true {
        let mouse = app.mouse.position();
        let pos = format!("[{:.1}, {:.1}]", mouse.x, mouse.y);
        draw.text(&pos)
            .xy(mouse + vec2(0.0, 20.0))
            .font_size(14)
            .color(DARKBLUE);
    }

    // 描画回数などを表示
    if true {
        let win = app.window_rect();
        let r = Rect::from_w_h(win.w(), 22.0).top_left_of(win.pad(0.0));
        // draw.rect().xy(r.xy()).wh(r.wh()).rgb(0.0, 0.0, 0.4);
        let text = format!("{} {:.2} {:.0}fps {}x{} M({:.0},{:.0}) {:.0}",
                           frame.nth(),
                           app.time,
                           app.fps(),
                           win.w(),
                           win.h(),
                           app.mouse.x,
                           app.mouse.y,
                           app.mouse.position().length(),
        );
        draw.text(&text)
            .xy(r.xy())
            .wh(r.wh())
            // .left_justify()
            // .align_text_top()
            .color(CORNFLOWERBLUE);
    }

    // 描画回数などを表示
    if true {
        let win = app.window_rect();
        let r = Rect::from_w_h(win.w(), 22.0).bottom_left_of(win.pad(0.0));
        // draw.rect().xy(r.xy()).wh(r.wh()).rgb(0.0, 0.0, 0.4);
        let text = format!("{:?} {}",
                           model.mouse_down,
                           model.any_value1,
        );
        draw.text(&text).xy(r.xy()).wh(r.wh()).color(CORNFLOWERBLUE);
    }

    draw.to_frame(app, &frame).unwrap();
}
