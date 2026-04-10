# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_id_mapping
      class PublicMigrationMapping < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute legacy_list_id
        #   The legacy list id for the list
        #
        #   @return [String]
        required :legacy_list_id, String, api_name: :legacyListId

        # @!attribute list_id
        #   The V3 list id for the list
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!method initialize(legacy_list_id:, list_id:)
        #   @param legacy_list_id [String] The legacy list id for the list
        #
        #   @param list_id [String] The V3 list id for the list
      end
    end
  end
end
