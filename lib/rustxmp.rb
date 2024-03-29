require "active_support/logger"
require "active_support/isolated_execution_state"

require "active_support/core_ext/hash"
require "active_support/core_ext/string"

require "active_support/configurable"

require "pathname"
require "thor"
require "table_format"
require "fileutils"
require "open3"

module Rustxmp
  def self.root
    Pathname(__dir__)
  end

  include ActiveSupport::Configurable
  config_accessor(:debug) { false }
  config_accessor(:xmp_out_exclude) { false }
  config_accessor(:readonly) { true }
end

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.ignore("#{__dir__}/rustxmp/logger.rb")
loader.ignore("#{__dir__}/rustxmp/**/_*.rb")
# loader.inflector.inflect("rustxmp" => "Rustxmp")
loader.log! if false
loader.setup

require "rustxmp/logger"

loader.eager_load if true
