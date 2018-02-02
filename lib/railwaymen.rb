require "railwaymen/version"
require "railwaymen/configuration"
require "railwaymen/errors/missing_ticket"
require "railwaymen/conductor"

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
