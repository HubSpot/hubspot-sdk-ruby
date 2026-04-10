# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class BusinessUnits
      # @return [HubSpotSDK::Resources::BusinessUnits::BusinessUnitEntries]
      attr_reader :business_unit_entries

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @business_unit_entries = HubSpotSDK::Resources::BusinessUnits::BusinessUnitEntries.new(client: client)
      end
    end
  end
end
