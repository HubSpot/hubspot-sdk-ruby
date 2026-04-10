# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3
        extend HubSpotSDK::Internal::Type::Union

        variant -> { HubSpotSDK::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3 }

        variant -> { HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3 }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3, HubSpotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3)]
      end
    end
  end
end
