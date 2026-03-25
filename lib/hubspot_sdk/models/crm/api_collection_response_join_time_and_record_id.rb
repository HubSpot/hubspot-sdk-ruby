# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class APICollectionResponseJoinTimeAndRecordID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::JoinTimeAndRecordID>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::JoinTimeAndRecordID] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!attribute total
        #   The total number of records that match the query.
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, paging: nil, total: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::JoinTimeAndRecordID>]
        #
        #   @param paging [HubspotSDK::Models::Paging]
        #
        #   @param total [Integer] The total number of records that match the query.
      end
    end
  end
end
