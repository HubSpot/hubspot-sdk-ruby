# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class AssociationsSchema
        # @return [HubSpotSDK::Resources::Crm::AssociationsSchema::Labels]
        attr_reader :labels

        # @return [HubSpotSDK::Resources::Crm::AssociationsSchema::Limits]
        attr_reader :limits

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @labels = HubSpotSDK::Resources::Crm::AssociationsSchema::Labels.new(client: client)
          @limits = HubSpotSDK::Resources::Crm::AssociationsSchema::Limits.new(client: client)
        end
      end
    end
  end
end
