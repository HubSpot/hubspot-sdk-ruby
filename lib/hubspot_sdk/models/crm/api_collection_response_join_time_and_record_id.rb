# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class APICollectionResponseJoinTimeAndRecordID < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::JoinTimeAndRecordID>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::JoinTimeAndRecordID] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!attribute total
        #   The total number of records that match the query.
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, paging: nil, total: nil)
        #   @param results [Array<HubSpotSDK::Models::Crm::JoinTimeAndRecordID>]
        #
        #   @param paging [HubSpotSDK::Models::Paging]
        #
        #   @param total [Integer] The total number of records that match the query.
      end
    end
  end
end
