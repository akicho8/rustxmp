$LOAD_PATH.unshift("#{__dir__}/../lib")
$LOAD_PATH.unshift(__dir__)
require "rustxmp"
require "rspec"

Pathname.glob("#{__dir__}/**/*_support.rb") { |e| require e.to_s }
Pathname.glob("#{__dir__}/support/**/*.rb") { |e| require e.to_s }

Zeitwerk::Loader.eager_load_all

Rustxmp.logger.level = :error
Rustxmp.xmp_out_exclude = true

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
  config.expect_with :test_unit
  config.example_status_persistence_file_path = "#{__dir__}/.all_test_result.txt"
end
