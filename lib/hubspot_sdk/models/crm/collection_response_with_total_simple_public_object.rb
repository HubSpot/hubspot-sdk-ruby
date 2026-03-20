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
        #   The number of available results
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Crm::Paging, nil]
        optional :paging, -> { HubspotSDK::Crm::Paging }

        # @!method initialize(results:, total:, paging: nil)
        #   Represents a list of simple objects returned from an API request, along with the
        #   total count of objects available.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::SimplePublicObject>]
        #
        #   @param total [Integer] The number of available results
        #
        #   @param paging [HubspotSDK::Models::Crm::Paging]
      end
    end
  end
end
