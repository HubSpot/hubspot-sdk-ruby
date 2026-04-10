# typed: strong

module HubSpotSDK
  module Resources
    class Marketing
      sig { returns(HubSpotSDK::Resources::Marketing::Campaigns) }
      attr_reader :campaigns

      sig { returns(HubSpotSDK::Resources::Marketing::Emails) }
      attr_reader :emails

      sig { returns(HubSpotSDK::Resources::Marketing::MarketingEvents) }
      attr_reader :marketing_events

      sig { returns(HubSpotSDK::Resources::Marketing::SingleSend) }
      attr_reader :single_send

      sig { returns(HubSpotSDK::Resources::Marketing::Transactional) }
      attr_reader :transactional

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
