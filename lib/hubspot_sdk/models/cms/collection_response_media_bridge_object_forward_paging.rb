# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseMediaBridgeObjectForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::MediaBridgeObject>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::MediaBridgeObject] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Cms::MediaBridgeObject>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
