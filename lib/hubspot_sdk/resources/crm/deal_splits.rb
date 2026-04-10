# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class DealSplits
        # @return [HubSpotSDK::Resources::Crm::DealSplits::Batch]
        attr_reader :batch

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::Crm::DealSplits::Batch.new(client: client)
        end
      end
    end
  end
end
