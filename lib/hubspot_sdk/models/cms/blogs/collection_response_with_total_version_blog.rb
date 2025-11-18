# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalVersionBlog < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog versions.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::VersionBlog>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::VersionBlog] }

          # @!attribute total
          #   Total number of blog versions.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::Paging, nil]
          optional :paging, -> { HubspotSDK::Paging }

          # @!method initialize(results:, total:, paging: nil)
          #   Response object for collections of blog versions with pagination information.
          #
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::VersionBlog>] Collection of blog versions.
          #
          #   @param total [Integer] Total number of blog versions.
          #
          #   @param paging [HubspotSDK::Models::Paging]
        end
      end

      CollectionResponseWithTotalVersionBlog = Blogs::CollectionResponseWithTotalVersionBlog
    end
  end
end
