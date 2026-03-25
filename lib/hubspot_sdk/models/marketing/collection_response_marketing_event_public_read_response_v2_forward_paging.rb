# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseMarketingEventPublicReadResponseV2ForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventPublicReadResponseV2>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventPublicReadResponseV2] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::MarketingEventPublicReadResponseV2>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
