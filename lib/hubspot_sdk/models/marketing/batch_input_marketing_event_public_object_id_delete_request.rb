# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventPublicObjectIDDeleteRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventPublicObjectIDDeleteRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventPublicObjectIDDeleteRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventPublicObjectIDDeleteRequest>]
      end
    end
  end
end
