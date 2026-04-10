# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class RecordIDWithMemberships < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute record_id
        #
        #   @return [String]
        required :record_id, String, api_name: :recordId

        # @!attribute record_list_memberships
        #
        #   @return [Array<HubSpotSDK::Models::Crm::RecordListMembership>]
        required :record_list_memberships,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::RecordListMembership] },
                 api_name: :recordListMemberships

        # @!method initialize(object_type_id:, record_id:, record_list_memberships:)
        #   @param object_type_id [String]
        #   @param record_id [String]
        #   @param record_list_memberships [Array<HubSpotSDK::Models::Crm::RecordListMembership>]
      end
    end
  end
end
