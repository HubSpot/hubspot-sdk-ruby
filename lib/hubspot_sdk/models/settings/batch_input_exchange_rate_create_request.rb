# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class BatchInputExchangeRateCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Settings::ExchangeRateCreateRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRateCreateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Settings::ExchangeRateCreateRequest>]
      end
    end
  end
end
