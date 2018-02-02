require "railwaymen/version"
require "railwaymen/configuration"

module Railwaymen
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration) if block_given?
      configuration
    end
  end
end
