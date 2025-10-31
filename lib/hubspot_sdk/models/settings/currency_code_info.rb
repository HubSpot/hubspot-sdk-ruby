# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class CurrencyCodeInfo < HubspotSDK::Internal::Type::BaseModel
        # @!attribute currency_code
        #
        #   @return [String]
        required :currency_code, String, api_name: :currencyCode

        # @!attribute currency_name
        #
        #   @return [String]
        required :currency_name, String, api_name: :currencyName

        # @!method initialize(currency_code:, currency_name:)
        #   @param currency_code [String]
        #   @param currency_name [String]
      end
    end
  end
end
