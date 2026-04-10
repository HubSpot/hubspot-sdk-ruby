# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      module Currencies
        # @see HubSpotSDK::Resources::Settings::Currencies::CentralFxRates#create_currency
        class CentralFxRateCreateCurrencyParams < HubSpotSDK::Models::Settings::CurrencyCreateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
