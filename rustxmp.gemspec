lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) if !$LOAD_PATH.include?(lib)
require "rustxmp/version"

Gem::Specification.new do |spec|
  spec.name         = "rustxmp"
  spec.version      = Rustxmp::VERSION
  spec.author       = "Akira Ikeda"
  spec.email        = "pinpon.ikeda@gmail.com"
  spec.homepage     = "https://github.com/akicho8/rustxmp"
  spec.summary      = "xmp filter for rust"
  spec.description  = "xmp filter for rust"
  spec.platform     = Gem::Platform::RUBY
  spec.license      = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "pathname"
  spec.add_dependency "table_format"
  spec.add_dependency "thor"
  spec.add_dependency "zeitwerk"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "source2md"
end
