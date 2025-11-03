# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class APICollectionResponseRecordListMembershipNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::RecordListMembership>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::RecordListMembership] }

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, total: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::RecordListMembership>]
        #   @param total [Integer]
      end
    end
  end
end
