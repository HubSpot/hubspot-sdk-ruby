# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class RecordListMembership < HubspotSDK::Internal::Type::BaseModel
        # @!attribute first_added_timestamp
        #
        #   @return [Time]
        required :first_added_timestamp, Time, api_name: :firstAddedTimestamp

        # @!attribute last_added_timestamp
        #
        #   @return [Time]
        required :last_added_timestamp, Time, api_name: :lastAddedTimestamp

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute list_version
        #
        #   @return [Integer]
        required :list_version, Integer, api_name: :listVersion

        # @!attribute is_public_list
        #
        #   @return [Boolean, nil]
        optional :is_public_list, HubspotSDK::Internal::Type::Boolean, api_name: :isPublicList

        # @!method initialize(first_added_timestamp:, last_added_timestamp:, list_id:, list_version:, is_public_list: nil)
        #   Lists record is member of
        #
        #   @param first_added_timestamp [Time]
        #   @param last_added_timestamp [Time]
        #   @param list_id [String]
        #   @param list_version [Integer]
        #   @param is_public_list [Boolean]
      end
    end
  end
end
