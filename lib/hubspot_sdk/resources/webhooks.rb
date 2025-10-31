# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Webhooks
      # @return [HubspotSDK::Resources::Webhooks::Settings]
      attr_reader :settings

      # @return [HubspotSDK::Resources::Webhooks::Subscriptions]
      attr_reader :subscriptions

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @settings = HubspotSDK::Resources::Webhooks::Settings.new(client: client)
        @subscriptions = HubspotSDK::Resources::Webhooks::Subscriptions.new(client: client)
      end
    end
  end
end
