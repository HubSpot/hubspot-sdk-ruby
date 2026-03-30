# typed: strong

module HubspotSDK
  module Resources
    class Webhooks
      sig { returns(HubspotSDK::Resources::Webhooks::Webhooks) }
      attr_reader :webhooks

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
