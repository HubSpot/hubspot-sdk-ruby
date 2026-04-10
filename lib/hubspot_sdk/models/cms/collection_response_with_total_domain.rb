# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalDomain < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   The results of the query.
        #
        #   @return [Array<HubSpotSDK::Models::Cms::Domain>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Domain] }

        # @!attribute total
        #   The number of available results.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Cms::Domain>] The results of the query.
        #
        #   @param total [Integer] The number of available results.
        #
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
