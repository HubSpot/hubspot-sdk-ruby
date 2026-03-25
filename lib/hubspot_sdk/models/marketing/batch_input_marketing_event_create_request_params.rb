# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventCreateRequestParams < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventCreateRequestParams>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventCreateRequestParams] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventCreateRequestParams>]
      end
    end
  end
end
