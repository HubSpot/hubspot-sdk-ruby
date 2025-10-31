# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogAuthorForwardPaging < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog authors.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::BlogAuthor] }

          # @!attribute total
          #   Total number of blog authors.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubspotSDK::ForwardPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   Response object for collections of blog authors with pagination information.
          #
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>] Collection of blog authors.
          #
          #   @param total [Integer] Total number of blog authors.
          #
          #   @param paging [HubspotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
