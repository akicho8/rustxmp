require "../rust_wrapper"
require "active_support/isolated_execution_state"
require "table_format"

class MethodMatrix
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def to_s
    out = []
    out << "## #{@params[:title]}\n\n"
    out << to_table
    out.join
  end

  def to_table
    rows = []
    xmethods.each.with_index do |e, i|
      puts "[#{i.next}] #{e[:method]}"
      row = {}
      row["Method"] = e[:method]
      params[:columns].each do |column|
        source_code = params[:source_code].call(e, column)
        begin
          s = RustWrapper.new(source_code: source_code).to_s.strip
        rescue RustWrapper::RustRuntimeError => error
          s = "!"
        end
        if f = params[:value_transform]
          s = f[s]
        end
        row[column[:key]] = s
      end
      row["動作"] = e[:desc]
      row[""] = "[DOC](#{e[:doc_url]})"
      rows << row
    end
    rows = rows.collect do |e|
      e.transform_values(&method(:escape_for_markdown))
    end
    rows.to_t(markdown: true, tto_scate: false)
  end

  def xmethods
    list = params[:xmethods]
    if v = params[:max]
      list = list.take(v)
    end
    list
  end

  def escape_for_markdown(e)
    e = e.gsub(/\|_\|/, '|\_|')
    e = e.gsub(/([<>|])/, '\\\\\1')
  end
end
