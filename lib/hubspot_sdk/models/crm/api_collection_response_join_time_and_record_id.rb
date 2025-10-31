# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class APICollectionResponseJoinTimeAndRecordID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::JoinTimeAndRecordID>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::JoinTimeAndRecordID] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, paging: nil, total: nil)
        #   @param results [Array<HubspotSDK::Models::CRM::JoinTimeAndRecordID>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
        #
        #   @param total [Integer]
      end
    end
  end
end
