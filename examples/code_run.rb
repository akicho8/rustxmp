require "./setup"

puts Rustxmp::CodeRun.new(source_code: <<~EOS)
fn main() {
    1 + 2; // =>
}
EOS
