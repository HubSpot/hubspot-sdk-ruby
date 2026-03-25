# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogVersion < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::VersionBlog>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::VersionBlog] }

          # @!attribute total
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::Paging, nil]
          optional :paging, -> { HubspotSDK::Paging }

          # @!method initialize(results:, total:, paging: nil)
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::VersionBlog>]
          #   @param total [Integer]
          #   @param paging [HubspotSDK::Models::Paging]
        end
      end
    end
  end
end
