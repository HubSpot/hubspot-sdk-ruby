# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventCreateRequestParams < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::MarketingEventCreateRequestParams>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventCreateRequestParams] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::MarketingEventCreateRequestParams>]
      end
    end
  end
end
