# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      module Currencies
        # @see HubSpotSDK::Resources::Settings::Currencies::ExchangeRates#get_exchange_rate_by_id
        class ExchangeRateGetExchangeRateByIDParams < HubSpotSDK::Internal::Type::BaseModel
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
