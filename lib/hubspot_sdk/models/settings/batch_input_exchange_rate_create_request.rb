# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class BatchInputExchangeRateCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Settings::ExchangeRateCreateRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::ExchangeRateCreateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Settings::ExchangeRateCreateRequest>]
      end
    end
  end
end
