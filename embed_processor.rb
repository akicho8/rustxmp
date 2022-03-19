require "#{__dir__}/rust_wrapper"

class EmbedProcessor
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def to_s
    lines = RustWrapper.new(params).to_s.lines
    s = source.gsub(%r{^(?!\s*//)(?<code>.*)//\s*(=>|>>).*}) {
      if lines.empty?
        s = "?"
      else
        s = lines.shift.rstrip
      end
      "#{Regexp.last_match[:code]}// #{mark} #{s}"
    }
    s + lines.collect { |e| "// >> #{e.rstrip}\n" }.join
  end

  private

  def source
    params[:replace_code] || params[:source_code]
  end

  def mark
    params[:mark] || ">>"
  end
end
