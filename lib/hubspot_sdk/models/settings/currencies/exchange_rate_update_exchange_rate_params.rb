# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      module Currencies
        # @see HubspotSDK::Resources::Settings::Currencies::ExchangeRates#update_exchange_rate
        class ExchangeRateUpdateExchangeRateParams < HubspotSDK::Models::Settings::ExchangeRateMultiplier
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute exchange_rate_id
          #
          #   @return [String]
          required :exchange_rate_id, String

          # @!method initialize(exchange_rate_id:, request_options: {})
          #   @param exchange_rate_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
