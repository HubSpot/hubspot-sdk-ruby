# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalPageForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of pages.
        #
        #   @return [Array<HubspotSDK::Models::Cms::Page>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Page] }

        # @!attribute total
        #   Total number of pages.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of pages with pagination information.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::Page>] Collection of pages.
        #
        #   @param total [Integer] Total number of pages.
        #
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
