# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlog < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::Blog>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::Blog] }

          # @!attribute total
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::Paging, nil]
          optional :paging, -> { HubspotSDK::Paging }

          # @!method initialize(results:, total:, paging: nil)
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::Blog>]
          #   @param total [Integer]
          #   @param paging [HubspotSDK::Models::Paging]
        end
      end

      CollectionResponseWithTotalBlog = Blogs::CollectionResponseWithTotalBlog
    end
  end
end
