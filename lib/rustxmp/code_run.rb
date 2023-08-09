module Rustxmp
  # CodeRun.new("...").call
  class CodeRun
    class RustRuntimeError < StandardError; end

    attr_accessor :params

    def initialize(source, options = {})
      @source = source
      @options = options
    end

    def call
      FileUtils.makedirs(current_file.dirname)
      current_file.write(replaced_code)
      @stdout, @stderr, @status = Open3.capture3(command)
      error_report
      @stdout
    end

    def to_s
      call
    end

    private

    def replaced_code
      @source.lines.collect { |e|
        case
        when e.match?(/println/)
          e
        when e.match?(%r{//.*=>.*})
          md = e.match(/^(?<indent>\s*)(?<code>.*);/)
          %(#{md[:indent]}println!("{:?}", #{md[:code]});\n)
        else
          e
        end
      }.join
    end

    def playground_dir
      if v = ENV["PLAYGROUND_DIR"]
        return Pathname(v).expand_path
      end
      playground_root.join(playground_name || playground_default)
    end

    def playground_root
      Rustxmp.root.join("../playground")
    end

    def playground_default
      "default"
    end

    # // rustxmp_playground: "nannou"
    def playground_name
      if md = @source.match(%r{\b(?:rustxmp_playground):\s*"(?<value>.+?)"})
        md[:value]
      end
    end

    def basename
      (@options[:basename] || "_rustxmp").to_s.gsub(/_+/, "_")
    end

    def current_file
      playground_dir.join("examples/#{basename}.rs")
    end

    def command
      if build_by_cargo?
        "cd #{playground_dir} && cargo run -q --example #{current_file.basename('.*')}"
      else
        "cd #{current_file.dirname} && rustc #{current_file.basename} && ./#{current_file.basename('.*')}"
      end
    end

    def build_by_cargo?
      @options[:build_by] == :cargo || @source.match?(/^\s*use (?!std)\w+/)
    end

    def error_report
      unless @status.success?
        puts "[file] #{current_file}"
        puts @status
        if @stderr
          puts "-------------------------------------------------------------------------------- STDERR"
          @stderr = @stderr.gsub(/.*RUST_BACKTRACE.*\R/, "")
          puts @stderr
        end
        unless @stdout.empty?
          puts "-------------------------------------------------------------------------------- STDOUT"
          puts @stdout
        end
        puts "--------------------------------------------------------------------------------"
        raise RustRuntimeError, @stderr.to_s
      end
    end
  end
end
