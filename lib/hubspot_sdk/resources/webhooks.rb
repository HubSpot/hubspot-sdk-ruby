# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Webhooks
      # @return [HubspotSDK::Resources::Webhooks::Webhooks]
      attr_reader :webhooks

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @webhooks = HubspotSDK::Resources::Webhooks::Webhooks.new(client: client)
      end
    end
  end
end
