# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseWithTotalSimplePublicObject < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObject>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject] }

        # @!attribute total
        #   The total number of objects included into response.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Represents a list of simple objects returned from an API request, along with the
        #   total count of objects available.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::SimplePublicObject>]
        #
        #   @param total [Integer] The total number of objects included into response.
        #
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
