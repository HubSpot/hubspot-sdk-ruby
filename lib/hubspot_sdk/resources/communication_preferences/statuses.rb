# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CommunicationPreferences
      class Statuses
        # @return [HubspotSDK::Resources::CommunicationPreferences::Statuses::Batch]
        attr_reader :batch

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::CommunicationPreferences::Statuses::Batch.new(client: client)
        end
      end
    end
  end
end
