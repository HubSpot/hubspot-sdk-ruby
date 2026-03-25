# typed: strong

module HubspotSDK
  module Resources
    class Meta
      sig { returns(HubspotSDK::Resources::Meta::Origins) }
      attr_reader :origins

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
