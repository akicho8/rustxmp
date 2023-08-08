# Rustxmp: xmp filter for rust #

## Example ##

```ruby
puts Rustxmp::EmbedProcessor.new(source_code: <<~EOS)
fn main() {
    1 + 2;  // =>
}
EOS
```

> ```rust
> fn main() {
>     1 + 2; // => 3
> }
> ```

```ruby
puts Rustxmp::EmbedProcessor.new(source_code: <<~EOS)
fn main() {
    println!("{:?}", 1 + 2);  // =>
}
EOS
```

> ```rust
> fn main() {
>     println!("{:?}", 1 + 2); // => 3
> }
> ```

```ruby
puts Rustxmp::EmbedProcessor.new(source_code: <<~EOS)
// rustxmp_playground: "nannou"

use nannou::prelude::*;

fn main() {
    let r = Rect::from_w_h(100.0f32, 100.0f32);
    r.xy();                    // =>
    println!("{:?}", r.xy());  // =>
}
EOS
```

```rust
> // rustxmp_playground: "nannou"
> 
> use nannou::prelude::*;
> 
> fn main() {
>     let r = Rect::from_w_h(100.0f32, 100.0f32);
>     r.xy();                       // => Vec2(0.0, 0.0)
>     println!("{:?}", r.xy());     // => Vec2(0.0, 0.0)
> }
```
