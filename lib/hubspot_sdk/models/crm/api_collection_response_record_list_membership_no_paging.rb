# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class APICollectionResponseRecordListMembershipNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::RecordListMembership>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::RecordListMembership] }

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, total: nil)
        #   @param results [Array<HubspotSDK::Models::CRM::RecordListMembership>]
        #   @param total [Integer]
      end
    end
  end
end
