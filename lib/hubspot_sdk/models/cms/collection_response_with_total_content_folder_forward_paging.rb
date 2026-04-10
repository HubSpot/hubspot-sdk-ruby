# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalContentFolderForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of content folders.
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ContentFolder>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentFolder] }

        # @!attribute total
        #   Total number of content folders.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubSpotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Cms::ContentFolder>] Collection of content folders.
        #
        #   @param total [Integer] Total number of content folders.
        #
        #   @param paging [HubSpotSDK::Models::ForwardPaging]
      end
    end
  end
end
