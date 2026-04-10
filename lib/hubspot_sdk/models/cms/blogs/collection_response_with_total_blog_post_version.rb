# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class CollectionResponseWithTotalBlogPostVersion < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubSpotSDK::Models::Cms::Blogs::VersionBlogPost>]
          required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Blogs::VersionBlogPost] }

          # @!attribute total
          #
          #   @return [Integer]
          required :total, Integer

          # @!attribute paging
          #
          #   @return [HubSpotSDK::Models::Paging, nil]
          optional :paging, -> { HubSpotSDK::Paging }

          # @!method initialize(results:, total:, paging: nil)
          #   @param results [Array<HubSpotSDK::Models::Cms::Blogs::VersionBlogPost>]
          #   @param total [Integer]
          #   @param paging [HubSpotSDK::Models::Paging]
        end
      end
    end
  end
end
