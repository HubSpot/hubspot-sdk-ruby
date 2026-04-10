# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class ObjectLibrary
        # @return [HubSpotSDK::Resources::Crm::ObjectLibrary::Enablement]
        attr_reader :enablement

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @enablement = HubSpotSDK::Resources::Crm::ObjectLibrary::Enablement.new(client: client)
        end
      end
    end
  end
end
