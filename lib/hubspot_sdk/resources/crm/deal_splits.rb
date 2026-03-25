# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class DealSplits
        # @return [HubspotSDK::Resources::Crm::DealSplits::Batch]
        attr_reader :batch

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Crm::DealSplits::Batch.new(client: client)
        end
      end
    end
  end
end
