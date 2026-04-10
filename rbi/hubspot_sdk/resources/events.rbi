# typed: strong

module HubSpotSDK
  module Resources
    class Events
      sig { returns(HubSpotSDK::Resources::Events::Definitions) }
      attr_reader :definitions

      sig { returns(HubSpotSDK::Resources::Events::Occurrences) }
      attr_reader :occurrences

      sig { returns(HubSpotSDK::Resources::Events::Send) }
      attr_reader :send_

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
