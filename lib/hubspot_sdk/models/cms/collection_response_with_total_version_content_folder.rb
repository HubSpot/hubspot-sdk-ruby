# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalVersionContentFolder < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   Collection of content folder versions.
        #
        #   @return [Array<HubspotSDK::Models::Cms::VersionContentFolder>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::VersionContentFolder] }

        # @!attribute total
        #   Total number of content folder versions.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Response object for collections of content folder versions with pagination
        #   information.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::VersionContentFolder>] Collection of content folder versions.
        #
        #   @param total [Integer] Total number of content folder versions.
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
