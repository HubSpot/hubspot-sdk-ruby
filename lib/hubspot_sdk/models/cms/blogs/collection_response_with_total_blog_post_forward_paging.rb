# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogPostForwardPaging < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog posts.
          #
          #   @return [Array<HubSpotSDK::Models::Cms::Blogs::BlogPost>]
          required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Blogs::BlogPost] }

          # @!attribute total
          #   Total number of blog posts.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubSpotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubSpotSDK::ForwardPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   @param results [Array<HubSpotSDK::Models::Cms::Blogs::BlogPost>] Collection of blog posts.
          #
          #   @param total [Integer] Total number of blog posts.
          #
          #   @param paging [HubSpotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
