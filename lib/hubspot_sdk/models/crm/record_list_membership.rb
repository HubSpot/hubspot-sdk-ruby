# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class RecordListMembership < HubspotSDK::Internal::Type::BaseModel
        # @!attribute first_added_timestamp
        #   The timestamp when the record was first added to the list.
        #
        #   @return [Time]
        required :first_added_timestamp, Time, api_name: :firstAddedTimestamp

        # @!attribute last_added_timestamp
        #   The timestamp when the record was last added to the list.
        #
        #   @return [Time]
        required :last_added_timestamp, Time, api_name: :lastAddedTimestamp

        # @!attribute list_id
        #   The unique identifier of the list.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute list_version
        #   The version number of the list.
        #
        #   @return [Integer]
        required :list_version, Integer, api_name: :listVersion

        # @!attribute is_public_list
        #   Indicates whether the list is public.
        #
        #   @return [Boolean, nil]
        optional :is_public_list, HubspotSDK::Internal::Type::Boolean, api_name: :isPublicList

        # @!method initialize(first_added_timestamp:, last_added_timestamp:, list_id:, list_version:, is_public_list: nil)
        #   @param first_added_timestamp [Time] The timestamp when the record was first added to the list.
        #
        #   @param last_added_timestamp [Time] The timestamp when the record was last added to the list.
        #
        #   @param list_id [String] The unique identifier of the list.
        #
        #   @param list_version [Integer] The version number of the list.
        #
        #   @param is_public_list [Boolean] Indicates whether the list is public.
      end
    end
  end
end
