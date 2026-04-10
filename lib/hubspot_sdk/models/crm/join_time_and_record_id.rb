# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_memberships_join_order
      class JoinTimeAndRecordID < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute membership_timestamp
        #   The date and time when the record was added to the list.
        #
        #   @return [Time]
        required :membership_timestamp, Time, api_name: :membershipTimestamp

        # @!attribute record_id
        #   The unique identifier of the record.
        #
        #   @return [String]
        required :record_id, String, api_name: :recordId

        # @!method initialize(membership_timestamp:, record_id:)
        #   @param membership_timestamp [Time] The date and time when the record was added to the list.
        #
        #   @param record_id [String] The unique identifier of the record.
      end
    end
  end
end
