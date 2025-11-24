# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      sig { returns(HubspotSDK::Resources::Conversations::Actors) }
      attr_reader :actors

      sig { returns(HubspotSDK::Resources::Conversations::ChannelAccounts) }
      attr_reader :channel_accounts

      sig { returns(HubspotSDK::Resources::Conversations::Channels) }
      attr_reader :channels

      sig { returns(HubspotSDK::Resources::Conversations::CustomChannels) }
      attr_reader :custom_channels

      sig { returns(HubspotSDK::Resources::Conversations::Inboxes) }
      attr_reader :inboxes

      sig { returns(HubspotSDK::Resources::Conversations::Messages) }
      attr_reader :messages

      sig { returns(HubspotSDK::Resources::Conversations::Threads) }
      attr_reader :threads

      sig do
        returns(HubspotSDK::Resources::Conversations::VisitorIdentification)
      end
      attr_reader :visitor_identification

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
