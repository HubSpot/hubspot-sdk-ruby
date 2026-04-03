# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::MarketingEvents#search_identifiers_by_external_event_id
      class CollectionResponseWithTotalMarketingEventIdentifiersResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventIdentifiersResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventIdentifiersResponse] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Marketing::MarketingEventIdentifiersResponse>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
