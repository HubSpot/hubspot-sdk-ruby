# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      # @return [HubspotSDK::Resources::Conversations::Actors]
      attr_reader :actors

      # @return [HubspotSDK::Resources::Conversations::ChannelAccounts]
      attr_reader :channel_accounts

      # @return [HubspotSDK::Resources::Conversations::Channels]
      attr_reader :channels

      # @return [HubspotSDK::Resources::Conversations::CustomChannels]
      attr_reader :custom_channels

      # @return [HubspotSDK::Resources::Conversations::Inboxes]
      attr_reader :inboxes

      # @return [HubspotSDK::Resources::Conversations::Messages]
      attr_reader :messages

      # @return [HubspotSDK::Resources::Conversations::Threads]
      attr_reader :threads

      # @return [HubspotSDK::Resources::Conversations::VisitorIdentification]
      attr_reader :visitor_identification

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @actors = HubspotSDK::Resources::Conversations::Actors.new(client: client)
        @channel_accounts = HubspotSDK::Resources::Conversations::ChannelAccounts.new(client: client)
        @channels = HubspotSDK::Resources::Conversations::Channels.new(client: client)
        @custom_channels = HubspotSDK::Resources::Conversations::CustomChannels.new(client: client)
        @inboxes = HubspotSDK::Resources::Conversations::Inboxes.new(client: client)
        @messages = HubspotSDK::Resources::Conversations::Messages.new(client: client)
        @threads = HubspotSDK::Resources::Conversations::Threads.new(client: client)
        @visitor_identification = HubspotSDK::Resources::Conversations::VisitorIdentification.new(client: client)
      end
    end
  end
end
