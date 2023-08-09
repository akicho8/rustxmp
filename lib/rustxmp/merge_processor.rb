module Rustxmp
  class MergeProcessor
    attr_accessor :options

    def initialize(output, source, options = {})
      @output = output
      @source = source
      @options = options
    end

    def call
      @lines = @output.lines
      s = @source.gsub(%r{^(?!\s*//)(?<code>.*)//\s*(=>|>>).*}) {
        md = Regexp.last_match
        if @lines.empty?
          s = @options[:nothing] || "(出力なし)"
        else
          s = @lines.shift.rstrip
        end
        "#{md[:code]}// #{mark} #{s}"
      }
      # 残りの標準出力
      s + @lines.collect { |e| "// >> #{e.rstrip}\n" }.join
    end

    def to_s
      call
    end

    private

    def mark
      @options[:mark] || "=>"
    end
  end
end
