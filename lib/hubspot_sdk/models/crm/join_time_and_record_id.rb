# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class JoinTimeAndRecordID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute membership_timestamp
        #
        #   @return [Time]
        required :membership_timestamp, Time, api_name: :membershipTimestamp

        # @!attribute record_id
        #
        #   @return [String]
        required :record_id, String, api_name: :recordId

        # @!method initialize(membership_timestamp:, record_id:)
        #   @param membership_timestamp [Time]
        #   @param record_id [String]
      end
    end
  end
end
