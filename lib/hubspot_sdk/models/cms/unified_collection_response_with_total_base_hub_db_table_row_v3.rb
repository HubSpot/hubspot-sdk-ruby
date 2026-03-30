# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3 }

        variant -> { HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3 }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3, HubspotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3)]
      end
    end
  end
end
