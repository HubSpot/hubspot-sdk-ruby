# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#search_identifiers_by_external_event_id
      class CollectionResponseWithTotalMarketingEventIdentifiersResponseNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventIdentifiersResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventIdentifiersResponse] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(results:, total:)
        #   @param results [Array<HubspotSDK::Models::Marketing::MarketingEventIdentifiersResponse>]
        #   @param total [Integer]
      end
    end
  end
end
