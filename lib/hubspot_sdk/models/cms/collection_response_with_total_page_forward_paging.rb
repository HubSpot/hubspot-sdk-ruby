# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalPageForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of pages.
        #
        #   @return [Array<HubSpotSDK::Models::Cms::PageData>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PageData] }

        # @!attribute total
        #   Total number of pages.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Cms::PageData>] Collection of pages.
        #
        #   @param total [Integer] Total number of pages.
        #
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
