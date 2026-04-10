# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_record_memberships
      class APICollectionResponseRecordListMembership < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::RecordListMembership>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::RecordListMembership] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!attribute total
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(results:, paging: nil, total: nil)
        #   @param results [Array<HubSpotSDK::Models::Crm::RecordListMembership>]
        #   @param paging [HubSpotSDK::Models::Paging]
        #   @param total [Integer]
      end
    end
  end
end
