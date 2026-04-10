# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicObjectListSearchResult < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #   The **ILS ID** of the list.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute list_version
        #   The version of the list.
        #
        #   @return [Integer]
        required :list_version, Integer, api_name: :listVersion

        # @!attribute name
        #   The name of the list.
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #   The object type of the list.
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute processing_status
        #   The processing status of the list.
        #
        #   @return [String]
        required :processing_status, String, api_name: :processingStatus

        # @!attribute processing_type
        #   The processing type of the list.
        #
        #   @return [String]
        required :processing_type, String, api_name: :processingType

        # @!attribute additional_filter_properties
        #   The name and value of any additional properties that exist for this list and
        #   that were included in the search request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :additional_filter_properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute created_at
        #   The time when the list was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_by_id
        #   The ID of the user that created the list.
        #
        #   @return [String, nil]
        optional :created_by_id, String, api_name: :createdById

        # @!attribute deleted_at
        #   The time when the list was deleted.
        #
        #   @return [Time, nil]
        optional :deleted_at, Time, api_name: :deletedAt

        # @!attribute filters_updated_at
        #   The time when the filters for this list were last updated.
        #
        #   @return [Time, nil]
        optional :filters_updated_at, Time, api_name: :filtersUpdatedAt

        # @!attribute updated_at
        #   The time the list was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by_id
        #   The ID of the user that last updated the list.
        #
        #   @return [String, nil]
        optional :updated_by_id, String, api_name: :updatedById

        # @!method initialize(list_id:, list_version:, name:, object_type_id:, processing_status:, processing_type:, additional_filter_properties: nil, created_at: nil, created_by_id: nil, deleted_at: nil, filters_updated_at: nil, updated_at: nil, updated_by_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicObjectListSearchResult} for more details.
        #
        #   @param list_id [String] The **ILS ID** of the list.
        #
        #   @param list_version [Integer] The version of the list.
        #
        #   @param name [String] The name of the list.
        #
        #   @param object_type_id [String] The object type of the list.
        #
        #   @param processing_status [String] The processing status of the list.
        #
        #   @param processing_type [String] The processing type of the list.
        #
        #   @param additional_filter_properties [Hash{Symbol=>String}] The name and value of any additional properties that exist for this list and tha
        #
        #   @param created_at [Time] The time when the list was created.
        #
        #   @param created_by_id [String] The ID of the user that created the list.
        #
        #   @param deleted_at [Time] The time when the list was deleted.
        #
        #   @param filters_updated_at [Time] The time when the filters for this list were last updated.
        #
        #   @param updated_at [Time] The time the list was last updated.
        #
        #   @param updated_by_id [String] The ID of the user that last updated the list.
      end
    end
  end
end
