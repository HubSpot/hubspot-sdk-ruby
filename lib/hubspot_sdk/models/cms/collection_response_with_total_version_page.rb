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
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of page versions with pagination information.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::VersionPage>] Collection of page versions.
        #
        #   @param total [Integer] Total number of page versions.
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
