# typed: strong

module HubspotSDK
  module Resources
    class Webhooks
      sig { returns(HubspotSDK::Resources::Webhooks::Settings) }
      attr_reader :settings

      sig { returns(HubspotSDK::Resources::Webhooks::Subscriptions) }
      attr_reader :subscriptions

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
