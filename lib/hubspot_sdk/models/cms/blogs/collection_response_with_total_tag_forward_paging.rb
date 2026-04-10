# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalTagForwardPaging < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute results
          #   Collection of blog tags.
          #
          #   @return [Array<HubSpotSDK::Models::Cms::Blogs::Tag>]
          required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Blogs::Tag] }

          # @!attribute total
          #   Total number of blog tags.
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubSpotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubSpotSDK::ForwardPaging }

          # @!method initialize(results:, total:, paging: nil)
          #   @param results [Array<HubSpotSDK::Models::Cms::Blogs::Tag>] Collection of blog tags.
          #
          #   @param total [Integer] Total number of blog tags.
          #
          #   @param paging [HubSpotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
