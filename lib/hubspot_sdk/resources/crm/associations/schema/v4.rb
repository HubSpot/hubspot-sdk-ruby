# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Associations
        class Schema
          class V4
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
end
