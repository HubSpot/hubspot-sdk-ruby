# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      sig { returns(HubspotSDK::Resources::Marketing::Campaigns) }
      attr_reader :campaigns

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
