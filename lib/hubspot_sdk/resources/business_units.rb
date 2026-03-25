# frozen_string_literal: true

module HubspotSDK
  module Resources
    class BusinessUnits
      # @return [HubspotSDK::Resources::BusinessUnits::BusinessUnits]
      attr_reader :business_units

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @business_units = HubspotSDK::Resources::BusinessUnits::BusinessUnits.new(client: client)
      end
    end
  end
end
