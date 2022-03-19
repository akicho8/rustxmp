require "pathname"
require "fileutils"

class RustWrapper
  class RustRuntimeError < StandardError
  end

  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def to_s
    f = playground_root.join("examples/#{basename}.rs")
    FileUtils.makedirs(f.dirname)
    f.write(source_code)
    if build_by_cargo?
      command = "cd #{playground_root} && cargo run -q --example #{f.basename('.*')}"
    else
      command = "cd #{f.dirname} && rustc #{f.basename} && ./#{f.basename('.*')}"
    end
    result = `#{command}`
    unless $?.success?
      puts "-" * 80
      puts f
      puts "-" * 80
      puts source_code
      puts "-" * 80
      puts $?
      puts "-" * 80
      raise RustRuntimeError, f.to_s
    end
    result
  end

  def source_code
    @params[:source_code]
  end

  def build_by_cargo?
    @params[:build_by] == :cargo || source_code.match?(/^\s*use itertools/)
  end

  def playground_root
    Pathname("#{__dir__}/playground")
  end

  def basename
    (@params[:basename] || "_rust_xmpfilter").to_s.gsub(/_+/, "_")
  end
end
