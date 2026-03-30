# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalContentFolderVersion < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::ContentFolderVersion>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::ContentFolderVersion] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Cms::ContentFolderVersion>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
