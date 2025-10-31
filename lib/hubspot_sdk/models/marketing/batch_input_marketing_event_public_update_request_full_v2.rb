# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventPublicUpdateRequestFullV2 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventPublicUpdateRequestFullV2>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventPublicUpdateRequestFullV2] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventPublicUpdateRequestFullV2>]
      end
    end
  end
end
