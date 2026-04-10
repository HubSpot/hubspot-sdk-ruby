# typed: strong

module HubSpotSDK
  module Resources
    class Meta
      sig { returns(HubSpotSDK::Resources::Meta::Origins) }
      attr_reader :origins

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
