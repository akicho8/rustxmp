#+hidden: true
require "./setup"

## Example ##

#+BEGIN_SRC
puts Rustxmp::EmbedProcessor.new(source_code: <<~EOS)
fn main() {
    1 + 2; // =>
}
EOS
#+END_SRC

# > ```rust
# > fn main() {
# >     1 + 2; // => 3
# > }
# > ```

#+BEGIN_SRC
puts Rustxmp::EmbedProcessor.new(source_code: <<~EOS)
fn main() {
    println!("{:?}", 1 + 2); // =>
}
EOS
#+END_SRC

# > ```rust
# > fn main() {
# >     println!("{:?}", 1 + 2); // => 3
# > }
# > ```

#+BEGIN_SRC
puts Rustxmp::EmbedProcessor.new(source_code: <<~EOS)
// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    let r = Rect::from_w_h(100.0f32, 100.0f32);
    r.xy();                       // =>
    println!("{:?}", r.xy());     // =>
}
EOS
#+END_SRC

# ```rust
# > // rustxmp_playground: "nannou"
# > 
# > use nannou::prelude::*;
# > 
# > fn main() {
# >     let r = Rect::from_w_h(100.0f32, 100.0f32);
# >     r.xy();                       // => Vec2(0.0, 0.0)
# >     println!("{:?}", r.xy());     // => Vec2(0.0, 0.0)
# > }
# ```
