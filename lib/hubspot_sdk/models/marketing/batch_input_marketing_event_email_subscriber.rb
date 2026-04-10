# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventEmailSubscriber < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   List of marketing event details to create or update
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::MarketingEventEmailSubscriber>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventEmailSubscriber] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::MarketingEventEmailSubscriber>] List of marketing event details to create or update
      end
    end
  end
end
