# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicImportMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute counters
        #   Summarized outcomes of each row a developer attempted to import into HubSpot.
        #
        #   @return [Hash{Symbol=>Integer}]
        required :counters, HubspotSDK::Internal::Type::HashOf[Integer]

        # @!attribute file_ids
        #   The IDs of files uploaded in the File Manager API.
        #
        #   @return [Array<String>]
        required :file_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :fileIds

        # @!attribute object_lists
        #   The lists containing the imported objects.
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicObjectListRecord>]
        required :object_lists,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicObjectListRecord] },
                 api_name: :objectLists

        # @!method initialize(counters:, file_ids:, object_lists:)
        #   @param counters [Hash{Symbol=>Integer}] Summarized outcomes of each row a developer attempted to import into HubSpot.
        #
        #   @param file_ids [Array<String>] The IDs of files uploaded in the File Manager API.
        #
        #   @param object_lists [Array<HubspotSDK::Models::CRM::PublicObjectListRecord>] The lists containing the imported objects.
      end
    end
  end
end
