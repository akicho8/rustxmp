// ベクトル射影

use nannou::prelude::*;

#[allow(unused_imports)]
use itertools::Itertools;

struct Model {
    app_mode: isize,  // 何か
    mouse_down: bool,   // 左クリックで true になる
    m_v1: Vec2,
    m_v2: Vec2,
}

impl Model {
    // Model 内の変数を操作するまとまった処理はここに書く
    fn app_mode_change(&mut self, sign: isize) {
        self.app_mode += sign;
    }
}

fn main() {
    // お約束
    nannou::app(model).event(event).update(update).run();
}

fn model(app: &App) -> Model {
    app.set_loop_mode(LoopMode::Wait);

    // ここらへんもお約束
    app.new_window()
        .size(640, 480) // あとからは app.window_rect() でわかるので定数にしなくてもよかろう
        .mouse_pressed(mouse_pressed)
        .mouse_released(mouse_released)
        .key_pressed(key_pressed)
        .key_released(key_released)
        .view(view)
        .build()
        .unwrap();

    // Windowタイトルを入れる場合
    if true {
        app.main_window().set_title("Nannou all in one template");
    }

    Model {
        app_mode: 0,
        m_v1: vec2(20.0, 50.0) * 2.0,
        m_v2: vec2(60.0, 30.0) * 2.0,
        mouse_down: false,
        // ball: Ball::new(DODGERBLUE),
        // ps: ParticleSystem::new(),
    }
}

fn event(app: &App, model: &mut Model, event: Event) {
    if let Event::WindowEvent {
        simple: Some(KeyPressed(key)),
        ..
    } = event
    {
        match key {
            Key::Left  => model.app_mode_change(-1),
            Key::Right => model.app_mode_change(1),
            Key::Q     => app.quit(),
            Key::S     => app.main_window().capture_frame(app.exe_name().unwrap() + ".png"),
            _ => {}
        }
    }
}

fn mouse_pressed(_app: &App, model: &mut Model, button: MouseButton) {
    match button {
        MouseButton::Left => model.mouse_down = true,
        MouseButton::Right => {}
        _ => {}
    }
    model.app_mode += 1;
}

fn mouse_released(_app: &App, model: &mut Model, button: MouseButton) {
    match button {
        MouseButton::Left => model.mouse_down = false,
        MouseButton::Right => {}
        _ => {}
    }
}

fn key_pressed(_app: &App, _model: &mut Model, key: Key) {
    match key {
        Key::Z => {}
        _ => {}
    }
}

fn key_released(_app: &App, _model: &mut Model, key: Key) {
    match key {
        Key::Z => {}
        _ => {}
    }
}

fn update(app: &App, model: &mut Model, _update: Update) {
    match model.app_mode % 2 {
        0 => model.m_v1 = app.mouse.position(),
        1 => model.m_v2 = app.mouse.position(),
        _ => {},
    }
}

fn view(app: &App, model: &Model, frame: Frame) {
    let draw = app.draw();
    let win = app.window_rect();

    frame.clear(hsl(240.0 / 360.0, 1.0, 0.01));

    let v0 = Vec2::ZERO;
    let v1 = model.m_v1;
    let v2 = model.m_v2;
    let v3 = v1.project_onto(v2);
    let v4 = v1.reject_from(v2);
    let v5 = v2.perp();
    let v6 = v1 + v2;

    draw.arrow().start_cap_round().weight(5.0).points(v0, v1).color(DEEPPINK);
    draw.arrow().start_cap_round().weight(5.0).points(v0, v2).color(DEEPPINK);
    draw.arrow().start_cap_round().weight(3.0).points(v0, v5).color(DEEPPINK);
    draw.arrow().start_cap_round().weight(1.0).points(v0, v3).color(BLUE);
    draw.arrow().start_cap_round().weight(1.0).points(v0, v4).color(BLUE);
    draw.arrow().start_cap_round().weight(1.0).points(v0, v6).color(BLUE);
    draw.line().weight(1.0).points(v1, v6).color(BLUE);
    draw.line().weight(1.0).points(v2, v6).color(BLUE);
    // draw.line().weight(1.0).points(v1, v3).color(BLUE);

    draw.text(&"v0").xy(v0 + vec2(0.0, 20.0)).font_size(14).color(DODGERBLUE);
    draw.text(&"v1").xy(v1 + vec2(0.0, 20.0)).font_size(14).color(DODGERBLUE);
    draw.text(&"v2").xy(v2 + vec2(0.0, 20.0)).font_size(14).color(DODGERBLUE);
    draw.text(&"v3").xy(v3 + vec2(0.0, 20.0)).font_size(14).color(DODGERBLUE);
    draw.text(&"v4").xy(v4 + vec2(0.0, 20.0)).font_size(14).color(DODGERBLUE);
    draw.text(&"v5").xy(v5 + vec2(0.0, 20.0)).font_size(14).color(DODGERBLUE);
    draw.text(&"v6").xy(v6 + vec2(0.0, 20.0)).font_size(14).color(DODGERBLUE);

    // アプリ情報を表示
    // let r = Rect::from_w_h(win.w() * 0.5, win.h() * 0.25).bottom_left_of(win.pad(30.0));
    let r = Rect::from_w_h(win.w(), win.h() * 0.3)
        .pad(20.0)
        .mid_bottom_of(win.pad(20.0));
    draw.rect().xy(r.xy()).wh(r.wh()).hsla(1.0, 1.0, 1.0, 0.025);
    // let v2n = v2.normalize();
    // let v3_len = v1.x * v2n.x + v1.y * v2n.y;
    // let v3 = v2n * v3_len;
    let text = [
        // format!("({:.2}*{:.2} + {:.2}*{:.2}) = {:.2}", v1.x, v2n.x, v1.y, v2n.y, v3_len),
        // format!("({:.2},{:.2}) * {:.2} = ({:.2},{:.2})", v2n.x, v2n.y, v3_len, v3.x, v3.y),
        format!("v1.dot(v2): {:.0}", v1.dot(v2)),
        format!("v1.perp_dot(v2): {:.0}", v1.perp_dot(v2)),
        format!("v2.perp(): ({:.0},{:.0})", v5.x, v5.y),
        format!("v1.distance_squared(v2): {:.0}", v1.distance_squared(v2)),
    ].iter().join("\n");
    draw.text(&text)
        .xy(r.xy())
        .wh(r.wh())
        .left_justify()
        .align_text_top()
        .color(CORNFLOWERBLUE);

    // アプリ情報を表示
    let r = Rect::from_w_h(win.w(), 22.0).bottom_left_of(win.pad(0.0));
    // draw.rect().xy(r.xy()).wh(r.wh()).rgb(0.0, 0.0, 0.4);
    let text = format!("{:?} {}", model.mouse_down, model.app_mode);
    draw.text(&text).xy(r.xy()).wh(r.wh()).color(CORNFLOWERBLUE);

    // システム情報を表示
    let r = Rect::from_w_h(win.w(), 22.0).top_left_of(win.pad(0.0));
    let text = format!(
        "{} {:.2} {:.0}fps",
        frame.nth(),
        app.time,
        app.fps(),
    );
    draw.text(&text)
        .xy(r.xy())
        .wh(r.wh())
        .left_justify()
    // .align_text_top()
        .color(CORNFLOWERBLUE);

    draw.to_frame(app, &frame).unwrap();
}
