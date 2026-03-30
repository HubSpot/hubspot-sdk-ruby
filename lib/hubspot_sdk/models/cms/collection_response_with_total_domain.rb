# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class CollectionResponseWithTotalDomain < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   The results of the query.
        #
        #   @return [Array<HubspotSDK::Models::Cms::Domain>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Domain] }

        # @!attribute total
        #   The number of available results.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Cms::Domain>] The results of the query.
        #
        #   @param total [Integer] The number of available results.
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
