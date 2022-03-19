require "#{__dir__}/rust_wrapper"
require "active_support/isolated_execution_state"
require "table_format"

class MethodMatrix
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def run
    rows = []
    params[:xmethods].each do |e|
      puts e[:method]
      row = {}
      row["Method"] = e[:method]
      params[:columns].each do |column|
        source_code = params[:source_code].call(e, column)
        begin
          s = RustWrapper.new(source_code: source_code).to_s.strip
        rescue RustWrapper::RustRuntimeError => error
          s = "!"
        end
        row[column[:key]] = s
      end
      row["意味"] = e[:desc]
      rows << row
    end
    rows = rows.collect do |e|
      e.transform_values { |e| e.gsub(/\|/, "\\|") }
    end
    puts rows.to_t(markdown: true, truncate: false)
  end
end
