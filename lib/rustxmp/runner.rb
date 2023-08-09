module Rustxmp
  class Runner
    def initialize(files, options = {})
      @files = files
      @options = {
      }.merge(options)
    end

    def call
      if pipe?
        puts EmbedProcessor.new(@options.merge(source: STDIN.read)).to_s
        return
      end

      @files.each do |e|
        e = Pathname(e)
        # str = CodeRun.new(@options.merge(source: e.read)).to_s
        str = EmbedProcessor.new(@options.merge(source: e.read)).to_s
        if @options[:overwrite]
          e.write(str)
          next
        end
        puts str
      end
    end

    private

    def pipe?
      File.pipe?(STDIN) || File.select([STDIN], [], [], 0)
    end
  end
end
