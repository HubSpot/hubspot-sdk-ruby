# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class ObjectLibrary
        # @return [HubspotSDK::Resources::Crm::ObjectLibrary::Enablement]
        attr_reader :enablement

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @enablement = HubspotSDK::Resources::Crm::ObjectLibrary::Enablement.new(client: client)
        end
      end
    end
  end
end
