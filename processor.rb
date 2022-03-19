require "pathname"
require "fileutils"

class Processor
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def to_s
    output_embed_code
  end

  private

  def output_embed_code
    lines = run_and_result.lines
    s = source_code.gsub(%r{// (>>|=>).*}) { |s|
      r = lines.shift
      "// >> #{r.rstrip}"
    }
    s + lines.collect { |e| "// >> #{e.rstrip}\n" }.join
  end

  def run_and_result
    xmp_file = Pathname("playground/examples/_rust_xmpfilter.rs")
    FileUtils.makedirs(xmp_file.dirname)
    xmp_file.write(source_code)
    if build_by_cargo?
      command = "cd #{__dir__}/playground && cargo run -q --example #{xmp_file.basename('.*')}"
    else
      command = "cd #{__dir__}/playground/examples && rustc #{xmp_file.basename} && ./#{xmp_file.basename('.*')}"
    end
    result = `#{command}`
    unless $?.success?
      puts xmp_file
      puts $?
      abort
    end
    result
  end

  def source_code
    @params[:source_code]
  end

  def build_by_cargo?
    source_code.match?(/^use itertools/)
  end
end
