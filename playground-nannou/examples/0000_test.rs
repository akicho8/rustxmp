// https://docs.rs/nannou/latest/nannou/glam/struct.Vec2.html#impl-Mul%3CVec2%3E
// rustxmp_playground: "nannou"

use nannou::prelude::*;
use nannou::geom::Vertex2d;
use nannou::glam::*;

// BVec 型も調べる

// Vec2 は単なる座標としても使えるが point2 と明確に分けている

fn main() {
    // 種類
    {
        println!("{:?}", vec2(2.0, 3.0));      // => Vec2(2.0, 3.0)
        println!("{:?}", ivec2(-2, -3));       // => IVec2(-2, -3)
        println!("{:?}", uvec2(2, 3));         // => UVec2(2, 3)
        println!("{:?}", dvec2(2.0, 3.0));     // => DVec2(2.0, 3.0)
    }

    // 定数
    {
        println!("{:?}", Vec2::ZERO);      // => Vec2(0.0, 0.0)
        println!("{:?}", Vec2::ONE);       // => Vec2(1.0, 1.0)
        println!("{:?}", Vec2::X);         // => Vec2(1.0, 0.0)
        println!("{:?}", Vec2::Y);         // => Vec2(0.0, 1.0)
        println!("{:?}", Vec2::AXES);      // => [Vec2(1.0, 0.0), Vec2(0.0, 1.0)]
        println!("{:?}", Vec2::default()); // => Vec2(0.0, 0.0)
    }

    // 基本的な生成方法
    {
        println!("{:?}", vec2(2.0, 3.0));      // => Vec2(2.0, 3.0)
        println!("{:?}", Vec2::new(2.0, 3.0)); // => Vec2(2.0, 3.0)
    }

    // 特殊な生成方法
    {
        // 全要素を同じ値で生成する
        println!("{:?}", Vec2::splat(2.0));              // => Vec2(2.0, 2.0)

        // タプルから
        println!("{:?}", Vec2::from((2.0, 3.0)));               // => Vec2(2.0, 3.0)
        println!("{:?}", Vec2::from([2.0, 3.0]));               // => Vec2(2.0, 3.0)
        println!("{:?}", Vec2::from(vec2(2.0, 3.0)));           // => Vec2(2.0, 3.0)
        println!("{:?}", Vec2::from(Vec3::new(2.0, 3.0, 4.0))); // => Vec2(2.0, 3.0)

        // 配列の参照から生成
        println!("{:?}", Vec2::from_slice(&[2.0, 3.0])); // => Vec2(2.0, 3.0)
    }

    // 型変換系
    {
        // 3次元のベクトルに拡張する
        println!("{:?}", vec2(2.0, 3.0).extend(4.0)); // => Vec3(2.0, 3.0, 4.0)

        // 精度を変更する
        // D → f64
        // I → i32
        // U → u32
        println!("{:?}", vec2(2.0, 3.0).as_f64()); // => DVec2(2.0, 3.0)
        println!("{:?}", vec2(2.0, 3.0).as_i32()); // => IVec2(2, 3)
        println!("{:?}", vec2(2.0, 3.0).as_u32()); // => UVec2(2, 3)

        // ただの配列に戻す
        println!("{:?}", vec2(2.0, 3.0).to_array());  // => [2.0, 3.0]

        // これはなんだろう？
        println!("{:?}", vec2(2.0, 3.0).point2());    // => [2.0, 3.0]

        // 文字列化
        println!("{:?}", vec2(2.0, 3.0).to_string());                             // => "[2, 3]"
    }

    // あるある演算
    {
        // println!("{:?}", vec2(2.0, 3.0).add(vec2(4.0, 5.0)));     // => Vec2(3.0, 4.0)
        println!("{:?}", vec2(2.0, 3.0) + 1.0);     // => Vec2(3.0, 4.0)
        println!("{:?}", vec2(2.0, 3.0) - 1.0);     // => Vec2(1.0, 2.0)
        println!("{:?}", vec2(2.0, 3.0) * 2.0);     // => Vec2(4.0, 6.0)
        println!("{:?}", vec2(2.0, 3.0) / 2.0);     // => Vec2(1.0, 1.5)

        println!("{:?}", vec2(2.0, 3.0) + vec2(4.0, 5.0)); // => Vec2(6.0, 8.0)
        println!("{:?}", vec2(2.0, 3.0) - vec2(4.0, 5.0)); // => Vec2(-2.0, -2.0)
        println!("{:?}", vec2(2.0, 3.0) * vec2(4.0, 5.0)); // => Vec2(8.0, 15.0)
        println!("{:?}", vec2(2.0, 3.0) / vec2(4.0, 5.0)); // => Vec2(0.5, 0.6)

        println!("{:?}", vec2(2.0, 3.0).powf(2.0)); // => Vec2(4.0, 9.0)

        println!("{:?}", vec2(2.0, 3.0).exp());     // => Vec2(7.389056, 20.085537)
        println!("{:?}", -vec2(2.0, 3.0));          // => Vec2(-2.0, -3.0)
    }

    // 微補正
    {
        println!("{:?}", vec2(2.4, 3.5).floor()); // => Vec2(2.0, 3.0)
        println!("{:?}", vec2(2.4, 3.5).ceil());  // => Vec2(3.0, 4.0)
        println!("{:?}", vec2(2.4, 3.5).round()); // => Vec2(2.0, 4.0)

        // 範囲で補正
        println!("{:?}", vec2(2.0, 5.0).clamp(vec2(3.0, 3.0), vec2(4.0, 4.0)));   // => Vec2(3.0, 4.0)
    }

    // 成分を調整した変換
    {
        // 絶対値にする
        println!("{:?}", vec2(-2.0, -3.0).abs()); // => Vec2(2.0, 3.0)

        // 符号だけにする
        println!("{:?}", vec2(-2.0, 3.0).signum()); // => Vec2(-1.0, 1.0)

        // 成分から成分の floor を引く
        // -2.4 - -3 → 0.6
        //  5.8 -  5 → 0.8
        println!("{:?}", vec2(-2.4, 5.8).fract()); // => Vec2(0.5999999, 0.8000002)
    }

    // 有限・無限(NAN?)
    {
        println!("{:?}", vec2(2.0, 3.0).is_finite()); // => true

        println!("{:?}", vec2(2.0, f32::NAN).is_nan());      // => true
        println!("{:?}", vec2(2.0, f32::NAN).is_nan_mask()); // => BVec2(0x0, 0xffffffff)
    }

    // 最大最小
    {
        // 単に成分が対象
        println!("{:?}", vec2(2.0, 3.0).min_element()); // => 2.0
        println!("{:?}", vec2(2.0, 3.0).max_element()); // => 3.0
    }

    // 最大最小 どゆこと？
    {
        println!("{:?}", vec2(2.0, 3.0).min(vec2(4.0, 5.0))); // => Vec2(2.0, 3.0)
        println!("{:?}", vec2(2.0, 3.0).max(vec2(4.0, 5.0))); // => Vec2(4.0, 5.0)
    }

    // 比較
    {
        // 小数の誤差があるため整数のときだけにした方がよい
        println!("{:?}", vec2(2.0, 3.0) == vec2(2.0, 3.0)); // => true
        println!("{:?}", vec2(2.0, 3.0) != vec2(4.0, 5.0)); // => true
        // 大なり・小なりはできない

        // 許容する誤差を指定できる
        println!("{:?}", vec2(2.0, 3.0).abs_diff_eq(vec2(2.0, 3.1), 0.09)); // => false
        println!("{:?}", vec2(2.0, 3.0).abs_diff_eq(vec2(2.0, 3.1), 0.1));  // => true
    }

    // 比較した結果を mask で返す
    {
        println!("{:?}", vec2(2.0, 3.0).cmpeq(vec2(2.0, 3.0))); // => BVec2(0xffffffff, 0xffffffff)
        println!("{:?}", vec2(2.0, 3.0).cmpne(vec2(2.0, 3.0))); // => BVec2(0x0, 0x0)
        println!("{:?}", vec2(2.0, 3.0).cmpge(vec2(2.0, 3.0))); // => BVec2(0xffffffff, 0xffffffff)
        println!("{:?}", vec2(2.0, 3.0).cmpgt(vec2(2.0, 3.0))); // => BVec2(0x0, 0x0)
        println!("{:?}", vec2(2.0, 3.0).cmple(vec2(2.0, 3.0))); // => BVec2(0xffffffff, 0xffffffff)
        println!("{:?}", vec2(2.0, 3.0).cmplt(vec2(2.0, 3.0))); // => BVec2(0x0, 0x0)
    }

    // 長さ・距離
    {
        // sqrt(x**2 + y**2) → sqrt(13) → 3.6
        println!("{:?}", vec2(2.0, 3.0).length()); // => 3.6055512

        // length が最低 3.7 以上になるように調整したベクトルを返す
        println!("{:?}", vec2(2.0, 3.0).clamp_length_min(3.7)); // => Vec2(2.0523908, 3.078586)

        // length が最大 4.0 以下になるように調整したベクトルを返す
        println!("{:?}", vec2(2.0, 3.0).clamp_length_max(3.5)); // => Vec2(1.9414507, 2.9121761)

        // clamp_length_min(3.5) と clamp_length_max(3.7) を一括指定
        println!("{:?}", vec2(2.0, 3.0).clamp_length(3.5, 3.7)); // => Vec2(2.0, 3.0)

        // x**2 + y**2 → 2**2 + 3**2 → 13.0
        println!("{:?}", vec2(2.0, 3.0).length_squared()); // => 13.0

        // 1.0 / length
        println!("{:?}", vec2(2.0, 3.0).length_recip()); // => 0.2773501

        // 引数を原点と考える。あとは上と同じ
        println!("{:?}", vec2(10.0, 10.0).distance(vec2(12.0, 13.0)));                // => 3.6055512
        println!("{:?}", vec2(10.0, 10.0).distance_squared(vec2(12.0, 13.0)));        // => 13.0

    }

    // その他の計算
    {
        // (1.0 / x, 1.0 / y)
        println!("{:?}", vec2(2.0, 3.0).recip());                                 // => Vec2(0.5, 0.33333334)
    }

    // 正規化
    {
        // ダメなら Vec2(NaN, NaN)
        println!("{:?}", vec2(2.0, 3.0).normalize());                             // => Vec2(0.5547002, 0.8320503)
        println!("{:?}", vec2(0.0, 0.0).normalize());                             // => Vec2(NaN, NaN)

        // ダメなら None
        println!("{:?}", vec2(2.0, 3.0).try_normalize());                         // => Some(Vec2(0.5547002, 0.8320503))
        println!("{:?}", vec2(0.0, 0.0).try_normalize());                         // => None

        // ダメなら Vec2::ZERO
        println!("{:?}", vec2(2.0, 3.0).normalize_or_zero());                     // => Vec2(0.5547002, 0.8320503)
        println!("{:?}", vec2(0.0, 0.0).normalize_or_zero());                     // => Vec2(0.0, 0.0)

        // 正規化してある？
        println!("{:?}", vec2(2.0, 3.0).is_normalized());                         // => false
        println!("{:?}", vec2(2.0, 3.0).normalize().is_normalized());             // => true
    }

    // 線型補完
    // 第二引数(s)が 0 なら self で 1 なら other になる
    // self + (other - self) * s
    println!("{:?}", vec2(0.0, 0.0).lerp(vec2(4.0, 4.0), -0.5)); // => Vec2(-2.0, -2.0)
    println!("{:?}", vec2(0.0, 0.0).lerp(vec2(4.0, 4.0), 0.0));  // => Vec2(0.0, 0.0)
    println!("{:?}", vec2(0.0, 0.0).lerp(vec2(4.0, 4.0), 0.5));  // => Vec2(2.0, 2.0)
    println!("{:?}", vec2(0.0, 0.0).lerp(vec2(4.0, 4.0), 1.0));  // => Vec2(4.0, 4.0)
    println!("{:?}", vec2(0.0, 0.0).lerp(vec2(4.0, 4.0), 1.5));  // => Vec2(6.0, 6.0)

    // 角度
    {
        // 右下・真下・左下
        println!("{:?}", vec2(2.0, 2.0).angle());   // => 0.7853982
        println!("{:?}", vec2(0.0, 2.0).angle());   // => 1.5707963
        println!("{:?}", vec2(-2.0, 2.0).angle());  // => 2.3561945

        // これと一致するので angle は全体を 2 * PI とした角度を返すことがわかる
        println!("{:?}", PI * 0.25); // => 0.7853982
        println!("{:?}", PI * 0.50); // => 1.5707964
        println!("{:?}", PI * 0.75); // => 2.3561945

        // 2点間の角度差
        // other.angle - self.angle 相当
        // 右下.angle_between(真下) → PI * 0.25 → 0.7853982
        println!("{:?}", vec2(2.0, 2.0).angle_between(vec2(0.0, 2.0)));    // => 0.7853982
        println!("{:?}", vec2(0.0, 2.0).angle() - vec2(2.0, 2.0).angle()); // => 0.78539807

        // 右向き(2,0)を時計回りに90度回転すると真下(0,2)になる
        println!("{:?}", vec2(2.0, 0.0).rotate(PI * 0.5).round()); // => Vec2(-0.0, 2.0)
    }

    // 法線(-y, x) 時計回りに90度回転
    println!("{:?}", vec2(2.0, 3.0).perp());                                  // => Vec2(-3.0, 2.0)

    // 内積・外積
    {
        // 内積
        // x1 * x2 + y1 * y2
        println!("{:?}", vec2(2.0, 3.0).dot(vec2(4.0, 5.0))); // => 23.0
        println!("{:?}", 2 * 4 + 3 * 5);                      // => 23

        // ?
        // selfとの垂直内積other。ウェッジ積、2Dクロス積、および行列式とも呼ばれます。
        // x1 * y2 - x2 * y1
        println!("{:?}", vec2(2.0, 3.0).perp_dot(vec2(4.0, 5.0))); // => -2.0
        println!("{:?}", 2 * 5 - 4 * 3)                            // => -2

        // println!("{:?}", vec2(2.0, 3.0).project_onto(vec2(2.0, 3.0)));            // => Vec2(2.0, 3.0)
        // println!("{:?}", vec2(2.0, 3.0).reject_from(vec2(1.0, 1.0)));             // => Vec2(-0.5, 0.5)
        // println!("{:?}", vec2(2.0, 3.0).project_onto_normalized(vec2(1.0, 1.0))); // => Vec2(5.0, 5.0)
        // println!("{:?}", vec2(2.0, 3.0).reject_from_normalized(vec2(1.0, 1.0)));  // => Vec2(-3.0, -2.0)
    }
}
