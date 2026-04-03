# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Webhooks
      # @return [HubspotSDK::Resources::Webhooks::WebhookSubscriptions]
      attr_reader :webhook_subscriptions

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @webhook_subscriptions = HubspotSDK::Resources::Webhooks::WebhookSubscriptions.new(client: client)
      end
    end
  end
end
