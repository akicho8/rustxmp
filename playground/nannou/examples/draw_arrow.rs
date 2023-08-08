use nannou::prelude::*;

fn main() {
    nannou::sketch(view).run()
}

fn view(app: &App, frame: Frame) {
    let draw = app.draw();
    let r = app.window_rect();
    draw.background().color(BLACK);

    for r in r.subdivisions_iter() {
        for r in r.subdivisions_iter() {
            for r in r.subdivisions_iter() {
                let side = r.w().min(r.h());
                let start = r.xy();
                let start_to_mouse = app.mouse.position() - start;
                let target_mag = start_to_mouse.length().min(side * 0.5);
                let end = start + start_to_mouse.normalize() * target_mag;
                draw.arrow().weight(5.0).points(start, end);
            }
        }
    }

    draw.to_frame(app, &frame).unwrap();
}


// / https://guide.nannou.cc/tutorials/draw/animating-a-circle.html
// use nannou::prelude::*;
//
// struct Model {}
//
// fn main() {
//     nannou::app(model)
//         .event(event)
//         .simple_window(view)
//         .run();
// }
//
// fn model(_app: &App) -> Model {
//     Model {}
// }
//
// fn event(_app: &App, _model: &mut Model, _event: Event) {
// }
//
// fn view(app: &App, _model: &Model, frame: Frame) {
//     // 描画準備
//     let draw = app.draw();
//
//     // 時間で正弦波を生成
//     let xs = (app.time * 5.0 * 0.5).cos();
//     let ys = (app.time * 6.0 * 0.5).sin();
//
//     // ウィンドウの境界を取得 (円の動きを制限するため)
//     // boundary は「境界」を表す
//     let boundary = app.window_rect();
//
//     // ウィンドウの範囲に正弦波をマッピングする
//     let x = map_range(xs, -1.0, 1.0, boundary.left(), boundary.right());
//     let y = map_range(ys, -1.0, 1.0, boundary.bottom(), boundary.top());
//
//     // 背景クリア
//     draw.background().color(PLUM);
//
//     // 楕円描画
//     draw.ellipse().color(STEELBLUE).x_y(x, y);
//
//     draw.to_frame(app, &frame).unwrap();
// }
