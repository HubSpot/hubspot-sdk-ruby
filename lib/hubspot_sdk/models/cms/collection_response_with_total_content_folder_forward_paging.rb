# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalContentFolderForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of content folders.
        #
        #   @return [Array<HubspotSDK::Models::Cms::ContentFolder>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolder] }

        # @!attribute total
        #   Total number of content folders.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of content folders with pagination information.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::ContentFolder>] Collection of content folders.
        #
        #   @param total [Integer] Total number of content folders.
        #
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
