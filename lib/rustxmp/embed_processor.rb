module Rustxmp
  class EmbedProcessor
    attr_accessor :params

    def initialize(params)
      @params = params
    end

    def call
      lines = CodeRun.new(@params).to_s.lines
      s = source.gsub(%r{^(?!\s*//)(?<code>.*)//\s*(=>|>>).*}) {
        md = Regexp.last_match
        if lines.empty?
          s = @params[:nothing] || "(出力なし)"
        else
          s = lines.shift.rstrip
        end
        "#{md[:code]}// #{mark} #{s}"
      }
      # 残りの標準出力
      s + lines.collect { |e| "// >> #{e.rstrip}\n" }.join
    end

    def to_s
      call
    end

    private

    def source
      @params[:replace_code] || @params[:source_code]
    end

    def mark
      @params[:mark] || "=>"
    end
  end
end
