# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventEmailSubscriber < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   List of marketing event details to create or update
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventEmailSubscriber>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventEmailSubscriber] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventEmailSubscriber>] List of marketing event details to create or update
      end
    end
  end
end
