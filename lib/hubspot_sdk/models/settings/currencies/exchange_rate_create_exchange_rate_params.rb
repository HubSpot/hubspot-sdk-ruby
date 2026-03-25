# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      module Currencies
        # @see HubspotSDK::Resources::Settings::Currencies::ExchangeRates#create_exchange_rate
        class ExchangeRateCreateExchangeRateParams < HubspotSDK::Models::Settings::ExchangeRateCreateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
