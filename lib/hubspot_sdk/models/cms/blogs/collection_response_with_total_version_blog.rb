# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Settings#list_revisions
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
          #   Contains information pagination of results.
          #
          #   @return [HubspotSDK::Models::Marketing::Paging, nil]
          optional :paging, -> { HubspotSDK::Marketing::Paging }

          # @!method initialize(results:, total:, paging: nil)
          #   Response object for collections of blog versions with pagination information.
          #
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::VersionBlog>] Collection of blog versions.
          #
          #   @param total [Integer] Total number of blog versions.
          #
          #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
        end
      end
    end
  end
end
