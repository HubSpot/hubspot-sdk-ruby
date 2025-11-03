# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicBatchMigrationMapping < HubspotSDK::Internal::Type::BaseModel
        # @!attribute legacy_list_ids_to_ids_mapping
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicMigrationMapping>]
        required :legacy_list_ids_to_ids_mapping,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicMigrationMapping] },
                 api_name: :legacyListIdsToIdsMapping

        # @!attribute missing_legacy_list_ids
        #   A list of legacy list ids that were passed in but not found. It will be empty if
        #   no id's are missing
        #
        #   @return [Array<String>]
        required :missing_legacy_list_ids,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :missingLegacyListIds

        # @!method initialize(legacy_list_ids_to_ids_mapping:, missing_legacy_list_ids:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicBatchMigrationMapping} for more details.
        #
        #   @param legacy_list_ids_to_ids_mapping [Array<HubspotSDK::Models::Crm::PublicMigrationMapping>]
        #
        #   @param missing_legacy_list_ids [Array<String>] A list of legacy list ids that were passed in but not found. It will be empty if
      end
    end
  end
end
