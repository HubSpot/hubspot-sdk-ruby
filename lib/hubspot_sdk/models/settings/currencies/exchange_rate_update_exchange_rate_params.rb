# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      module Currencies
        # @see HubSpotSDK::Resources::Settings::Currencies::ExchangeRates#update_exchange_rate
        class ExchangeRateUpdateExchangeRateParams < HubSpotSDK::Models::Settings::ExchangeRateMultiplier
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute exchange_rate_id
          #
          #   @return [String]
          required :exchange_rate_id, String

          # @!method initialize(exchange_rate_id:, request_options: {})
          #   @param exchange_rate_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
