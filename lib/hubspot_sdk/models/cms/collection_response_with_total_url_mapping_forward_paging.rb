# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalURLMappingForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   An array of UrlMapping objects, each representing a specific URL mapping.
        #
        #   @return [Array<HubSpotSDK::Models::Cms::URLMapping>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::URLMapping] }

        # @!attribute total
        #   The total number of URL mappings available.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Cms::URLMapping>] An array of UrlMapping objects, each representing a specific URL mapping.
        #
        #   @param total [Integer] The total number of URL mappings available.
        #
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
