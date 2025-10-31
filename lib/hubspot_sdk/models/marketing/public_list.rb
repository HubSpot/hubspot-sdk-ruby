# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicList < HubspotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute list_version
        #
        #   @return [Integer]
        required :list_version, Integer, api_name: :listVersion

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute processing_status
        #
        #   @return [String]
        required :processing_status, String, api_name: :processingStatus

        # @!attribute processing_type
        #
        #   @return [String]
        required :processing_type, String, api_name: :processingType

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_by_id
        #
        #   @return [String, nil]
        optional :created_by_id, String, api_name: :createdById

        # @!attribute deleted_at
        #
        #   @return [Time, nil]
        optional :deleted_at, Time, api_name: :deletedAt

        # @!attribute filters_updated_at
        #
        #   @return [Time, nil]
        optional :filters_updated_at, Time, api_name: :filtersUpdatedAt

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by_id
        #
        #   @return [String, nil]
        optional :updated_by_id, String, api_name: :updatedById

        # @!method initialize(list_id:, list_version:, name:, object_type_id:, processing_status:, processing_type:, created_at: nil, created_by_id: nil, deleted_at: nil, filters_updated_at: nil, size: nil, updated_at: nil, updated_by_id: nil)
        #   @param list_id [String]
        #   @param list_version [Integer]
        #   @param name [String]
        #   @param object_type_id [String]
        #   @param processing_status [String]
        #   @param processing_type [String]
        #   @param created_at [Time]
        #   @param created_by_id [String]
        #   @param deleted_at [Time]
        #   @param filters_updated_at [Time]
        #   @param size [Integer]
        #   @param updated_at [Time]
        #   @param updated_by_id [String]
      end
    end
  end
end
