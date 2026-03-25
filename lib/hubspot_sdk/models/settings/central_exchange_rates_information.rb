# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class CentralExchangeRatesInformation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute central_exchange_rates_enabled
        #   Indicates if central exchange rates is enabled for the portal or not.
        #
        #   @return [Boolean]
        required :central_exchange_rates_enabled,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :centralExchangeRatesEnabled

        # @!method initialize(central_exchange_rates_enabled:)
        #   @param central_exchange_rates_enabled [Boolean] Indicates if central exchange rates is enabled for the portal or not.
      end
    end
  end
end
