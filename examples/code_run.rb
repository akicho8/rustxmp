require "./setup"

puts Rustxmp::CodeRun.new(<<~EOS)
fn main() {
    1 + 2; // =>
}
EOS
# >> 3
