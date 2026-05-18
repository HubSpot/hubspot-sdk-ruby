# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponseWithTotalSimplePublicObject < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::SimplePublicObject>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObject] }

        # @!attribute total
        #   The number of available results
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Represents a list of simple objects returned from an API request, along with the
        #   total count of objects available.
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::SimplePublicObject>]
        #
        #   @param total [Integer] The number of available results
        #
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
