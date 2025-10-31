# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogForwardPaging < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blogs.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::Blog>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::Blog] }

          # @!attribute total
          #   Total number of blogs.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubspotSDK::ForwardPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   Response object for collections of blogs with pagination information.
          #
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::Blog>] Collection of blogs.
          #
          #   @param total [Integer] Total number of blogs.
          #
          #   @param paging [HubspotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
