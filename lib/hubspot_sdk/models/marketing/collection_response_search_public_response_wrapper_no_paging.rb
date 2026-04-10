# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::MarketingEvents#search_by_external_event_id
      class CollectionResponseSearchPublicResponseWrapperNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Marketing::SearchPublicResponseWrapper>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Marketing::SearchPublicResponseWrapper] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Marketing::SearchPublicResponseWrapper>]
      end
    end
  end
end
