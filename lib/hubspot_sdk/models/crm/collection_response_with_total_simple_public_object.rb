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
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::EmailsPaging, nil]
        optional :paging, -> { HubspotSDK::Marketing::EmailsPaging }

        # @!method initialize(results:, total:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::SimplePublicObject>]
        #
        #   @param total [Integer] The number of available results
        #
        #   @param paging [HubspotSDK::Models::Marketing::EmailsPaging] Contains information pagination of results.
      end
    end
  end
end
