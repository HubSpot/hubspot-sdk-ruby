# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Associations
        # @return [HubspotSDK::Resources::Crm::Associations::Batch]
        attr_reader :batch

        # @return [HubspotSDK::Resources::Crm::Associations::Schema]
        attr_reader :schema

        # @return [HubspotSDK::Resources::Crm::Associations::V4]
        attr_reader :v4

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Crm::Associations::Batch.new(client: client)
          @schema = HubspotSDK::Resources::Crm::Associations::Schema.new(client: client)
          @v4 = HubspotSDK::Resources::Crm::Associations::V4.new(client: client)
        end
      end
    end
  end
end
