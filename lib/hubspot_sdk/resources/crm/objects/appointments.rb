# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Objects
        class Appointments
          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
