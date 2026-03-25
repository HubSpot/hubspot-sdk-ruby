# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventSubscriber < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   List of HubSpot contacts to subscribe to the marketing event
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventSubscriber>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventSubscriber] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventSubscriber>] List of HubSpot contacts to subscribe to the marketing event
      end
    end
  end
end
