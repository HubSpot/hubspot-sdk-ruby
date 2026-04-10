# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      # @return [HubSpotSDK::Resources::Marketing::Campaigns]
      attr_reader :campaigns

      # @return [HubSpotSDK::Resources::Marketing::Emails]
      attr_reader :emails

      # @return [HubSpotSDK::Resources::Marketing::MarketingEvents]
      attr_reader :marketing_events

      # @return [HubSpotSDK::Resources::Marketing::SingleSend]
      attr_reader :single_send

      # @return [HubSpotSDK::Resources::Marketing::Transactional]
      attr_reader :transactional

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @campaigns = HubSpotSDK::Resources::Marketing::Campaigns.new(client: client)
        @emails = HubSpotSDK::Resources::Marketing::Emails.new(client: client)
        @marketing_events = HubSpotSDK::Resources::Marketing::MarketingEvents.new(client: client)
        @single_send = HubSpotSDK::Resources::Marketing::SingleSend.new(client: client)
        @transactional = HubSpotSDK::Resources::Marketing::Transactional.new(client: client)
      end
    end
  end
end
