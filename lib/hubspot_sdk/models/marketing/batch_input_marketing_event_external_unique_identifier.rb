# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class BatchInputMarketingEventExternalUniqueIdentifier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventExternalUniqueIdentifier>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventExternalUniqueIdentifier] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventExternalUniqueIdentifier>]
      end
    end
  end
end
