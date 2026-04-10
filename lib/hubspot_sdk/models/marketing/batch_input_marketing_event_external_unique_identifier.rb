# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventExternalUniqueIdentifier < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::MarketingEventExternalUniqueIdentifier>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventExternalUniqueIdentifier] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Marketing::MarketingEventExternalUniqueIdentifier>]
      end
    end
  end
end
