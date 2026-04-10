# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicList < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #   An internal ID of the list
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute list_version
        #   A number that represents a version of the list
        #
        #   @return [Integer]
        required :list_version, Integer, api_name: :listVersion

        # @!attribute name
        #   The name of the list
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #   The internal ID of the object type of the list
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute processing_status
        #   Represents the current processing status of the list
        #
        #   @return [String]
        required :processing_status, String, api_name: :processingStatus

        # @!attribute processing_type
        #   Processing type of the list
        #
        #   @return [String]
        required :processing_type, String, api_name: :processingType

        # @!attribute created_at
        #   Timestamp of the creation of the list
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_by_id
        #   The ID of the user who created the list
        #
        #   @return [String, nil]
        optional :created_by_id, String, api_name: :createdById

        # @!attribute deleted_at
        #   Timestamp of the deletion of the list
        #
        #   @return [Time, nil]
        optional :deleted_at, Time, api_name: :deletedAt

        # @!attribute filters_updated_at
        #   Timestamp of the last update of the list filters
        #
        #   @return [Time, nil]
        optional :filters_updated_at, Time, api_name: :filtersUpdatedAt

        # @!attribute size
        #   The size of the result list
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute updated_at
        #   Timestamp of the last update of the list
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by_id
        #   The ID of the user who last updated the list
        #
        #   @return [String, nil]
        optional :updated_by_id, String, api_name: :updatedById

        # @!method initialize(list_id:, list_version:, name:, object_type_id:, processing_status:, processing_type:, created_at: nil, created_by_id: nil, deleted_at: nil, filters_updated_at: nil, size: nil, updated_at: nil, updated_by_id: nil)
        #   @param list_id [String] An internal ID of the list
        #
        #   @param list_version [Integer] A number that represents a version of the list
        #
        #   @param name [String] The name of the list
        #
        #   @param object_type_id [String] The internal ID of the object type of the list
        #
        #   @param processing_status [String] Represents the current processing status of the list
        #
        #   @param processing_type [String] Processing type of the list
        #
        #   @param created_at [Time] Timestamp of the creation of the list
        #
        #   @param created_by_id [String] The ID of the user who created the list
        #
        #   @param deleted_at [Time] Timestamp of the deletion of the list
        #
        #   @param filters_updated_at [Time] Timestamp of the last update of the list filters
        #
        #   @param size [Integer] The size of the result list
        #
        #   @param updated_at [Time] Timestamp of the last update of the list
        #
        #   @param updated_by_id [String] The ID of the user who last updated the list
      end
    end
  end
end
