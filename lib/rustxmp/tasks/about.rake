desc "About"
task :about do
  require "rustxmp"
  puts Rustxmp::VERSION
end
