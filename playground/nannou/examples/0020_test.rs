use nannou::prelude::*;

fn main() {
    nannou::sketch(view).run()
}

fn view(app: &App, frame: Frame) {
    let draw = app.draw();

    draw.background().color(STEELBLUE);

    // draw.rect()
    //     .x_y(0.0, 0.0)
    //     .w_h(100.0, 100.0)
    //     .color(PLUM);

    // draw.rect()
    //     .x_y(0.0, 0.0)
    //     .w_h(100.0, 100.0)
    //     .z_degrees(45.0)
    //     .color(PLUM);

    // draw.rect()
    //     .x_y(50.0, 50.0)
    //     .w_h(100.0, 100.0)
    //     .color(PLUM);
    //
    // {
    //     let side = 100.0;
    //     let top_left = pt2(-300.0, 200.0);
    //     let offset = vec2(side / 2.0, -side / 2.0);
    //     let xy = top_left + offset;
    //     draw.rect()
    //         .xy(xy)
    //         .w_h(side, side)
    //         .color(PLUM);
    // }

    {
        let r = Rect::from_w_h(100.0f32, 100.0f32);

        // println!("{:?}", r.xy());

        draw.rect()
            .xy(r.xy())
            .wh(r.wh())
            .color(PLUM);

        let win = app.window_rect();
        println!("{:?}", win);
        let r = Rect::from_w_h(100.0, 100.0).top_left_of(win);
        draw.rect()
            .xy(r.xy())
            .wh(r.wh())
            .color(PLUM);
    }

    draw.to_frame(app, &frame).unwrap();
}
