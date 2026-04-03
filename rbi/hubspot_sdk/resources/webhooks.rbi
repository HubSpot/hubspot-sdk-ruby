# typed: strong

module HubspotSDK
  module Resources
    class Webhooks
      sig { returns(HubspotSDK::Resources::Webhooks::WebhookSubscriptions) }
      attr_reader :webhook_subscriptions

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
