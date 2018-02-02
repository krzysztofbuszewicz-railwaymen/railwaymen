module Railwaymen
  module Errors
    class MissingTicket < StandardError
      def initialize
        super('Ticket is nil and it cannot be!')
      end
    end
  end
end
