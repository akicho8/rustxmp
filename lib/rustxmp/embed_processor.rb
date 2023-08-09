module Rustxmp
  class EmbedProcessor
    attr_accessor :options

    def initialize(source, options = {})
      @source = source
      @options = options
    end

    def call
      @output = CodeRun.new(@source, @options).to_s
      MergeProcessor.new(@output, merge_target, @options).to_s
    end

    def to_s
      call
    end

    private

    def merge_target
      @options[:merge_target] || @source
    end
  end
end
