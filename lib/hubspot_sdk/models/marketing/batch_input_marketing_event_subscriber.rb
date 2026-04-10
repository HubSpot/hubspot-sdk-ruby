# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventSubscriber < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   List of HubSpot contacts to subscribe to the marketing event
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::MarketingEventSubscriber>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventSubscriber] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::MarketingEventSubscriber>] List of HubSpot contacts to subscribe to the marketing event
      end
    end
  end
end
