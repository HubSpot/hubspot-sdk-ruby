# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        # @return [HubSpotSDK::Resources::CommunicationPreferences::Statuses::Batch]
        attr_reader :batch

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::CommunicationPreferences::Statuses::Batch.new(client: client)
        end
      end
    end
  end
end
