require "./setup"

puts Rustxmp::EmbedProcessor.new(source_code: <<~EOS)
fn main() {
    1 + 2; // =>
}
EOS
