# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      # @return [HubspotSDK::Resources::Marketing::Campaigns]
      attr_reader :campaigns

      # @return [HubspotSDK::Resources::Marketing::Emails]
      attr_reader :emails

      # @return [HubspotSDK::Resources::Marketing::Events]
      attr_reader :events

      # @return [HubspotSDK::Resources::Marketing::SingleSend]
      attr_reader :single_send

      # @return [HubspotSDK::Resources::Marketing::Transactional]
      attr_reader :transactional

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @campaigns = HubspotSDK::Resources::Marketing::Campaigns.new(client: client)
        @emails = HubspotSDK::Resources::Marketing::Emails.new(client: client)
        @events = HubspotSDK::Resources::Marketing::Events.new(client: client)
        @single_send = HubspotSDK::Resources::Marketing::SingleSend.new(client: client)
        @transactional = HubspotSDK::Resources::Marketing::Transactional.new(client: client)
      end
    end
  end
end
