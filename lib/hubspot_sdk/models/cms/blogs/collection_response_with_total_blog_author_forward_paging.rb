# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogAuthorForwardPaging < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog authors.
          #
          #   @return [Array<HubSpotSDK::Models::Cms::Blogs::BlogAuthor>]
          required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Blogs::BlogAuthor] }

          # @!attribute total
          #   Total number of blog authors.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubSpotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubSpotSDK::ForwardPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   @param results [Array<HubSpotSDK::Models::Cms::Blogs::BlogAuthor>] Collection of blog authors.
          #
          #   @param total [Integer] Total number of blog authors.
          #
          #   @param paging [HubSpotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
