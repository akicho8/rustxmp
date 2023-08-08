module Rustxmp
  # CodeRun.new(source_code: "...").call
  class CodeRun
    class RustRuntimeError < StandardError; end

    attr_accessor :params

    def initialize(params)
      @params = params
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
      raw_code.lines.collect { |e|
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

    def raw_code
      @params[:source_code]
    end

    def playground_dir
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
      if md = raw_code.match(%r{\b(?:rustxmp_playground):\s*"(?<value>.+?)"})
        md[:value]
      end
    end

    def basename
      (@params[:basename] || "_rustxmp").to_s.gsub(/_+/, "_")
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
      @params[:build_by] == :cargo || raw_code.match?(/^\s*use (?!std)\w+/)
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
