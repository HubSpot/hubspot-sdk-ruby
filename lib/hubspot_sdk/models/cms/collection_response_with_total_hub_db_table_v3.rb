# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalHubDBTableV3 < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::HubDBTableV3>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::HubDBTableV3] }

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Cms::HubDBTableV3>]
        #   @param total [Integer]
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
