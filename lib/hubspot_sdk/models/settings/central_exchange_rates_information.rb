# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class CentralExchangeRatesInformation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute central_exchange_rates_enabled
        #
        #   @return [Boolean]
        required :central_exchange_rates_enabled,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :centralExchangeRatesEnabled

        # @!method initialize(central_exchange_rates_enabled:)
        #   @param central_exchange_rates_enabled [Boolean]
      end
    end
  end
end
