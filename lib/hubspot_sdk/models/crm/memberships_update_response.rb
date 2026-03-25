# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#add_and_remove_memberships
      class MembershipsUpdateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute record_ids_missing
        #   The IDs of the records that were `missing` (e.g. did not exist in the portal)
        #   and so were not `added` or `removed`.
        #
        #   @return [Array<String>]
        required :record_ids_missing, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :recordIdsMissing

        # @!attribute record_ids_removed
        #   The IDs of the records that were `removed` from the list.
        #
        #   @return [Array<String>]
        required :record_ids_removed, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :recordIdsRemoved

        # @!attribute records_ids_added
        #
        #   @return [Array<String>]
        required :records_ids_added, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :recordsIdsAdded

        # @!method initialize(record_ids_missing:, record_ids_removed:, records_ids_added:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::MembershipsUpdateResponse} for more details.
        #
        #   @param record_ids_missing [Array<String>] The IDs of the records that were `missing` (e.g. did not exist in the portal) an
        #
        #   @param record_ids_removed [Array<String>] The IDs of the records that were `removed` from the list.
        #
        #   @param records_ids_added [Array<String>]
      end
    end
  end
end
