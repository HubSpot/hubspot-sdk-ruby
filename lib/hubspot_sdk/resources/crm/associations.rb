# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Associations
        # @return [HubspotSDK::Resources::CRM::Associations::Batch]
        attr_reader :batch

        # @return [HubspotSDK::Resources::CRM::Associations::Schema]
        attr_reader :schema

        # @return [HubspotSDK::Resources::CRM::Associations::V4]
        attr_reader :v4

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::CRM::Associations::Batch.new(client: client)
          @schema = HubspotSDK::Resources::CRM::Associations::Schema.new(client: client)
          @v4 = HubspotSDK::Resources::CRM::Associations::V4.new(client: client)
        end
      end
    end
  end
end
