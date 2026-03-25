# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalTagForwardPaging < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog tags.
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::Tag>]
          required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::Tag] }

          # @!attribute total
          #   Total number of blog tags.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubspotSDK::ForwardPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   @param results [Array<HubspotSDK::Models::Cms::Blogs::Tag>] Collection of blog tags.
          #
          #   @param total [Integer] Total number of blog tags.
          #
          #   @param paging [HubspotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
