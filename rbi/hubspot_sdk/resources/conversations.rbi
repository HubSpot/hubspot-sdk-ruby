# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      sig { returns(HubspotSDK::Resources::Conversations::CustomChannels) }
      attr_reader :custom_channels

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
