# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class MembershipChangeRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute record_ids_to_add
        #
        #   @return [Array<String>]
        required :record_ids_to_add, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :recordIdsToAdd

        # @!attribute record_ids_to_remove
        #
        #   @return [Array<String>]
        required :record_ids_to_remove,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :recordIdsToRemove

        # @!method initialize(record_ids_to_add:, record_ids_to_remove:)
        #   @param record_ids_to_add [Array<String>]
        #   @param record_ids_to_remove [Array<String>]
      end
    end
  end
end
