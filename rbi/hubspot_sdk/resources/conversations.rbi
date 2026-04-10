# typed: strong

module HubSpotSDK
  module Resources
    class Conversations
      sig { returns(HubSpotSDK::Resources::Conversations::CustomChannels) }
      attr_reader :custom_channels

      sig do
        returns(HubSpotSDK::Resources::Conversations::VisitorIdentification)
      end
      attr_reader :visitor_identification

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
