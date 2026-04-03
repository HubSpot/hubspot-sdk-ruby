# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::MarketingEvents#search_by_external_event_id
      class CollectionResponseSearchPublicResponseWrapperNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::SearchPublicResponseWrapper>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SearchPublicResponseWrapper] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Marketing::SearchPublicResponseWrapper>]
      end
    end
  end
end
