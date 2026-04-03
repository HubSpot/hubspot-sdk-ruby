# typed: strong

module HubspotSDK
  module Resources
    class BusinessUnits
      sig { returns(HubspotSDK::Resources::BusinessUnits::BusinessUnitEntries) }
      attr_reader :business_unit_entries

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
