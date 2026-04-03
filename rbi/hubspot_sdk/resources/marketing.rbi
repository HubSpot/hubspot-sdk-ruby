# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      sig { returns(HubspotSDK::Resources::Marketing::Campaigns) }
      attr_reader :campaigns

      sig { returns(HubspotSDK::Resources::Marketing::Emails) }
      attr_reader :emails

      sig { returns(HubspotSDK::Resources::Marketing::MarketingEvents) }
      attr_reader :marketing_events

      sig { returns(HubspotSDK::Resources::Marketing::SingleSend) }
      attr_reader :single_send

      sig { returns(HubspotSDK::Resources::Marketing::Transactional) }
      attr_reader :transactional

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
