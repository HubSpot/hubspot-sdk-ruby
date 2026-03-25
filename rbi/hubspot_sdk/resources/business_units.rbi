# typed: strong

module HubspotSDK
  module Resources
    class BusinessUnits
      sig { returns(HubspotSDK::Resources::BusinessUnits::BusinessUnits) }
      attr_reader :business_units

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
