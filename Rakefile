task :default => [:release]

task :r => :release

task :release do
  system "cargo build --release"
  system "ls -alh target/release/x"
  system "rsync -az target/release/x ~/bin"
end
