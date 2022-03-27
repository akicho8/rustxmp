require "pathname"
require "fileutils"
require "open3"

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

    stdout, stderr, status = Open3.capture3(command)
    unless status.success?
      puts "[file] #{f}"
      puts status
      if stderr
        puts "-------------------------------------------------------------------------------- STDERR"
        stderr = stderr.gsub(/.*RUST_BACKTRACE.*\R/, "")
        puts stderr
      end
      unless stdout.empty?
        puts "-------------------------------------------------------------------------------- STDOUT"
        puts stdout
      end
      puts "--------------------------------------------------------------------------------"
      raise RustRuntimeError, stderr.to_s
    end
    stdout
  end

  def source_code
    @params[:source_code]
  end

  def build_by_cargo?
    @params[:build_by] == :cargo || source_code.match?(/^\s*use (#{other_crates.join("|")})/)
  end

  def playground_root
    Pathname("#{__dir__}/playground")
  end

  def basename
    (@params[:basename] || "_rust_xmpfilter").to_s.gsub(/_+/, "_")
  end

  def other_crates
    [
      "itertools",
      "dirs",
    ]
  end
end
