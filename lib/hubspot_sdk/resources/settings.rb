# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Settings
      # @return [HubSpotSDK::Resources::Settings::Currencies]
      attr_reader :currencies

      # @return [HubSpotSDK::Resources::Settings::TaxRates]
      attr_reader :tax_rates

      # @return [HubSpotSDK::Resources::Settings::Users]
      attr_reader :users

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @currencies = HubSpotSDK::Resources::Settings::Currencies.new(client: client)
        @tax_rates = HubSpotSDK::Resources::Settings::TaxRates.new(client: client)
        @users = HubSpotSDK::Resources::Settings::Users.new(client: client)
      end
    end
  end
end
