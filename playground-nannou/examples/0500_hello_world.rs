use nannou::prelude::*;

fn main() {
    nannou::sketch(view).run();
}

fn view(app: &App, frame: Frame) {
    frame.clear(BLACK);

    let draw = app.draw();
    draw.background().color(WHITE);

    if true {
        // We'll align to the window dimensions, but padded slightly.
        let win_rect = app.main_window().rect().pad(20.0);

        let text = "あLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\n\nResize the window to test dynamic layout.";

        draw.text(text)
            .color(BLACK)
            .font_size(24)
            .wh(win_rect.wh());
    }

    if true {
        let win = app.window_rect();
        let r = Rect::from_w_h(win.w(), 15.0).top_left_of(win.pad(0.0));
        draw.rect().xy(r.xy()).wh(r.wh()).rgba(0.0, 0.0, 0.0, 0.9);
        let text = format!("{} {:.2} {:.0}fps", frame.nth(), app.time, app.fps());
        draw.text(&text).xy(r.xy()).wh(r.wh()).left_justify().align_text_top().color(WHITE);
    }

    draw.to_frame(app, &frame).unwrap();
}
