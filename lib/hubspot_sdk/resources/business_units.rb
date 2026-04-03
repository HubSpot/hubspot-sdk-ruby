# frozen_string_literal: true

module HubspotSDK
  module Resources
    class BusinessUnits
      # @return [HubspotSDK::Resources::BusinessUnits::BusinessUnitEntries]
      attr_reader :business_unit_entries

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @business_unit_entries = HubspotSDK::Resources::BusinessUnits::BusinessUnitEntries.new(client: client)
      end
    end
  end
end
