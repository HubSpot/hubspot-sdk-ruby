# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class ObjectLibrary
        # @return [HubspotSDK::Resources::CRM::ObjectLibrary::Enablement]
        attr_reader :enablement

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @enablement = HubspotSDK::Resources::CRM::ObjectLibrary::Enablement.new(client: client)
        end
      end
    end
  end
end
