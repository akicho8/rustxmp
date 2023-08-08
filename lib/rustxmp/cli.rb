module Rustxmp
  class Cli < Thor
    default_command :runner

    class_option :debug, type: :boolean, aliases: "-d", default: false

    def initialize(...)
      super

      if options[:debug]
        Rustxmp.logger.level = :debug
        Rustxmp.debug = true
      end

      # Rustxmp.xmp_out_exclude = options[:xmp_out_exclude]
      # Rustxmp.readonly = options[:readonly]

      # tp Rustxmp.config
    end

    desc "runner", "実行"
    option :overwrite, type: :boolean, aliases: "-w", default: false, desc: "ファイル上書き"
    def runner(*files)
      Runner.new(files, self.options.to_options).call
    end
  end
end

#   class Cli < Thor
#     def initialize(...)
#       super
#
#       if options[:debug]
#         Rustxmp.logger.level = :debug
#         Rustxmp.debug = true
#       end
#
#       Rustxmp.xmp_out_exclude = options[:xmp_out_exclude]
#       Rustxmp.readonly = options[:readonly]
#
#       tp Rustxmp.config
#     end
#
#     # default_command :generate
#
#     map "g" => :generate
#     desc "generate [files]", "Markdown generation"
#     option :output_file, type: :string, aliases: "-o", default: "output.md"
#     def generate(*files)
#       Generator.new(options.to_options.merge(files: files)).call
#     end
#   end
# end
