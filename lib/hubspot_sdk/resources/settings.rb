# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      # @return [HubspotSDK::Resources::Settings::Currencies]
      attr_reader :currencies

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @currencies = HubspotSDK::Resources::Settings::Currencies.new(client: client)
      end
    end
  end
end
