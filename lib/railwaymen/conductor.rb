module Railwaymen
  module Conductor
    def check_ticket!(ticket)
      raise Errors::MissingTicket if ticket.nil?
      "OK"
    end
  end
end
