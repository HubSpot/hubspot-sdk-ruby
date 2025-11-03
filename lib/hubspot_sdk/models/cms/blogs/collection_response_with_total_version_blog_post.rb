# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalVersionBlogPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog post versions.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::VersionBlogPost>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::VersionBlogPost] }

          # @!attribute total
          #   Total number of blog post versions.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #   Contains information pagination of results.
          #
          #   @return [HubspotSDK::Models::Marketing::EmailsPaging, nil]
          optional :paging, -> { HubspotSDK::Marketing::EmailsPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   Response object for collections of blog post versions with pagination
          #   information.
          #
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::VersionBlogPost>] Collection of blog post versions.
          #
          #   @param total [Integer] Total number of blog post versions.
          #
          #   @param paging [HubspotSDK::Models::Marketing::EmailsPaging] Contains information pagination of results.
        end
      end
    end
  end
end
