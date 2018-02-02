module Railwaymen
  class Configuration
    attr_reader :names

    def initialize
      @names = %w(Krzysztof)
    end

    def names=(names)
      raise(StandardError, 'names must be an array of strings') if !valid_names?(names)
      @names = names
    end

    private

    def valid_names?(names)
      names.is_a?(Array) && names.all? { |n| n.is_a?(String) }
    end
  end
end
