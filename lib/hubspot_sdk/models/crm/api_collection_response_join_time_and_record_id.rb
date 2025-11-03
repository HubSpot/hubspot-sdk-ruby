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
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::EmailsPaging, nil]
        optional :paging, -> { HubspotSDK::Marketing::EmailsPaging }

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, paging: nil, total: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::JoinTimeAndRecordID>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::EmailsPaging] Contains information pagination of results.
        #
        #   @param total [Integer]
      end
    end
  end
end
