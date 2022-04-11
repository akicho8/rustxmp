use nannou::prelude::*;

struct Model {}

fn main() {
    nannou::app(model)
        .event(event)
        .simple_window(view)
        .run();
}

fn model(_app: &App) -> Model {
    Model {}
}

fn event(_app: &App, _model: &mut Model, _event: Event) {
}

fn view(app: &App, _model: &Model, frame: Frame) {
    // 描画準備
    let draw = app.draw();

    // 時間で正弦波を生成
    let xs = (app.time * 5.0 * 0.5).cos();
    let ys = (app.time * 6.0 * 0.5).sin();

    // ウィンドウの境界を取得 (円の動きを制限するため)
    // boundary は「境界」を表す
    let boundary = app.window_rect();

    // ウィンドウの範囲に正弦波をマッピングする
    let x = map_range(xs, -1.0, 1.0, boundary.left(), boundary.right());
    let y = map_range(ys, -1.0, 1.0, boundary.bottom(), boundary.top());

    // 背景クリア
    draw.background().color(PLUM);

    // 楕円描画
    draw.ellipse().color(STEELBLUE).x_y(x, y);

    draw.to_frame(app, &frame).unwrap();
}
