# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalHubDBTableV3ForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::HubDBTableV3>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableV3] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Cms::HubDBTableV3>]
        #   @param total [Integer]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
