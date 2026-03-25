# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#list_memberships
      class JoinTimeAndRecordID < HubspotSDK::Internal::Type::BaseModel
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
