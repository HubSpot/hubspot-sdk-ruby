# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#get_record_memberships
      class APICollectionResponseRecordListMembership < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::RecordListMembership>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::RecordListMembership] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, paging: nil, total: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::RecordListMembership>]
        #   @param paging [HubspotSDK::Models::Paging]
        #   @param total [Integer]
      end
    end
  end
end
