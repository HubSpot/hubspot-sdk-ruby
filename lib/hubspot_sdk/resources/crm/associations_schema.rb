# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class AssociationsSchema
        # @return [HubspotSDK::Resources::Crm::AssociationsSchema::Labels]
        attr_reader :labels

        # @return [HubspotSDK::Resources::Crm::AssociationsSchema::Limits]
        attr_reader :limits

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @labels = HubspotSDK::Resources::Crm::AssociationsSchema::Labels.new(client: client)
          @limits = HubspotSDK::Resources::Crm::AssociationsSchema::Limits.new(client: client)
        end
      end
    end
  end
end
