# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class RecordListMembership < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute list_version
        #
        #   @return [Integer]
        required :list_version, Integer, api_name: :listVersion

        # @!attribute first_added_timestamp
        #
        #   @return [Time, nil]
        optional :first_added_timestamp, Time, api_name: :firstAddedTimestamp

        # @!attribute is_public_list
        #
        #   @return [Boolean, nil]
        optional :is_public_list, HubspotSDK::Internal::Type::Boolean, api_name: :isPublicList

        # @!attribute last_added_timestamp
        #
        #   @return [Time, nil]
        optional :last_added_timestamp, Time, api_name: :lastAddedTimestamp

        # @!method initialize(list_id:, list_version:, first_added_timestamp: nil, is_public_list: nil, last_added_timestamp: nil)
        #   Lists record is member of
        #
        #   @param list_id [String]
        #   @param list_version [Integer]
        #   @param first_added_timestamp [Time]
        #   @param is_public_list [Boolean]
        #   @param last_added_timestamp [Time]
      end
    end
  end
end
