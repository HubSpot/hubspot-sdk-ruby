# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class CurrencyCodeInfo < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute currency_code
        #   The three-letter code representing a specific currency (ex. USD).
        #
        #   @return [String]
        required :currency_code, String, api_name: :currencyCode

        # @!attribute currency_name
        #   The full name of the currency (ex. US Dollar).
        #
        #   @return [String]
        required :currency_name, String, api_name: :currencyName

        # @!method initialize(currency_code:, currency_name:)
        #   @param currency_code [String] The three-letter code representing a specific currency (ex. USD).
        #
        #   @param currency_name [String] The full name of the currency (ex. US Dollar).
      end
    end
  end
end
