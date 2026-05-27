# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      # @return [HubSpotSDK::Resources::WebhooksJournal::Journal]
      attr_reader :journal

      # @return [HubSpotSDK::Resources::WebhooksJournal::JournalLocal]
      attr_reader :journal_local

      # @return [HubSpotSDK::Resources::WebhooksJournal::Snapshots]
      attr_reader :snapshots

      # @return [HubSpotSDK::Resources::WebhooksJournal::Subscriptions]
      attr_reader :subscriptions

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @journal = HubSpotSDK::Resources::WebhooksJournal::Journal.new(client: client)
        @journal_local = HubSpotSDK::Resources::WebhooksJournal::JournalLocal.new(client: client)
        @snapshots = HubSpotSDK::Resources::WebhooksJournal::Snapshots.new(client: client)
        @subscriptions = HubSpotSDK::Resources::WebhooksJournal::Subscriptions.new(client: client)
      end
    end
  end
end
