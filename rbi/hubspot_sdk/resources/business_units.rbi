# typed: strong

module HubSpotSDK
  module Resources
    class BusinessUnits
      sig { returns(HubSpotSDK::Resources::BusinessUnits::BusinessUnitEntries) }
      attr_reader :business_unit_entries

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
