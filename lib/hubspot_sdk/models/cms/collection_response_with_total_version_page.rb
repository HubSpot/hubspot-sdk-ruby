# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalVersionPage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of page versions.
        #
        #   @return [Array<HubspotSDK::Models::Cms::VersionPage>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::VersionPage] }

        # @!attribute total
        #   Total number of page versions.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of page versions with pagination information.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::VersionPage>] Collection of page versions.
        #
        #   @param total [Integer] Total number of page versions.
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
