# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class BatchInputExchangeRateUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Settings::ExchangeRateUpdateRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::ExchangeRateUpdateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Settings::ExchangeRateUpdateRequest>]
      end
    end
  end
end
