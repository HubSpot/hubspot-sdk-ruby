# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicInListFilterMetadata < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The identifier for the filter metadata.
        #
        #   @return [String]
        required :id, String

        # @!attribute in_list_type
        #   Specifies the type of list for the filter (WORKFLOWS_ENROLLMENT,
        #   WORKFLOWS_ACTIVE, WORKFLOWS_GOAL, WORKFLOWS_COMPLETED, IMPORT, DATASET,
        #   DATASETS).
        #
        #   @return [String]
        required :in_list_type, String, api_name: :inListType

        # @!method initialize(id:, in_list_type:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicInListFilterMetadata} for more details.
        #
        #   @param id [String] The identifier for the filter metadata.
        #
        #   @param in_list_type [String] Specifies the type of list for the filter (WORKFLOWS_ENROLLMENT, WORKFLOWS_ACTIV
      end
    end
  end
end
