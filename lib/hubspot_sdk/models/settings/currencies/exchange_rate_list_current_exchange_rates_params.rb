# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      module Currencies
        # @see HubSpotSDK::Resources::Settings::Currencies::ExchangeRates#list_current_exchange_rates
        class ExchangeRateListCurrentExchangeRatesParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
