# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventPublicUpdateRequestFullV2 < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::MarketingEventPublicUpdateRequestFullV2>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventPublicUpdateRequestFullV2] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::MarketingEventPublicUpdateRequestFullV2>]
      end
    end
  end
end
