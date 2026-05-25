# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      sig { returns(HubSpotSDK::Resources::WebhooksJournal::Journal) }
      attr_reader :journal

      sig { returns(HubSpotSDK::Resources::WebhooksJournal::JournalLocal) }
      attr_reader :journal_local

      sig { returns(HubSpotSDK::Resources::WebhooksJournal::Snapshots) }
      attr_reader :snapshots

      sig { returns(HubSpotSDK::Resources::WebhooksJournal::Subscriptions) }
      attr_reader :subscriptions

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
