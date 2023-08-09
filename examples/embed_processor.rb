require "./setup"

puts Rustxmp::EmbedProcessor.new(<<~EOS)
fn main() {
    1 + 2; // =>
}
EOS
# >> fn main() {
# >>     1 + 2; // => 3
# >> }
