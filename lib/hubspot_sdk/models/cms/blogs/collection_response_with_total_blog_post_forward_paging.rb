# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogPostForwardPaging < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog posts.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::BlogPost>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogPost] }

          # @!attribute total
          #   Total number of blog posts.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubspotSDK::ForwardPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   Response object for collections of blog posts with pagination information.
          #
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::BlogPost>] Collection of blog posts.
          #
          #   @param total [Integer] Total number of blog posts.
          #
          #   @param paging [HubspotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
