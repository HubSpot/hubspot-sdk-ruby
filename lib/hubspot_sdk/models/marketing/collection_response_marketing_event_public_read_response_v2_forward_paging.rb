# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class CollectionResponseMarketingEventPublicReadResponseV2ForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::MarketingEventPublicReadResponseV2>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::MarketingEventPublicReadResponseV2] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Marketing::MarketingEventPublicReadResponseV2>]
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
