# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Settings
      # @return [HubspotSDK::Resources::Settings::Currencies]
      attr_reader :currencies

      # @return [HubspotSDK::Resources::Settings::TaxRates]
      attr_reader :tax_rates

      # @return [HubspotSDK::Resources::Settings::Users]
      attr_reader :users

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @currencies = HubspotSDK::Resources::Settings::Currencies.new(client: client)
        @tax_rates = HubspotSDK::Resources::Settings::TaxRates.new(client: client)
        @users = HubspotSDK::Resources::Settings::Users.new(client: client)
      end
    end
  end
end
