# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class MembershipChangeRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute record_ids_to_add
        #
        #   @return [Array<String>]
        required :record_ids_to_add, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :recordIdsToAdd

        # @!attribute record_ids_to_remove
        #
        #   @return [Array<String>]
        required :record_ids_to_remove,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :recordIdsToRemove

        # @!method initialize(record_ids_to_add:, record_ids_to_remove:)
        #   The IDs of the records to add and/or remove from a list.
        #
        #   @param record_ids_to_add [Array<String>]
        #   @param record_ids_to_remove [Array<String>]
      end
    end
  end
end
