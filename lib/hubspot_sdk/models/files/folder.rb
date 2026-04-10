# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class Folder < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the folder.
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #   Marks whether the folder is deleted or not.
        #
        #   @return [Boolean]
        required :archived, HubSpotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   Timestamp of folder creation.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute updated_at
        #   Timestamp of the latest update to the folder.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute archived_at
        #   Timestamp of folder deletion.
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute name
        #   Name of the folder.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_id
        #   ID of the parent folder.
        #
        #   @return [String, nil]
        optional :parent_folder_id, String, api_name: :parentFolderId

        # @!attribute path
        #   Path of the folder in the file manager.
        #
        #   @return [String, nil]
        optional :path, String

        # @!method initialize(id:, archived:, created_at:, updated_at:, archived_at: nil, name: nil, parent_folder_id: nil, path: nil)
        #   @param id [String] ID of the folder.
        #
        #   @param archived [Boolean] Marks whether the folder is deleted or not.
        #
        #   @param created_at [Time] Timestamp of folder creation.
        #
        #   @param updated_at [Time] Timestamp of the latest update to the folder.
        #
        #   @param archived_at [Time] Timestamp of folder deletion.
        #
        #   @param name [String] Name of the folder.
        #
        #   @param parent_folder_id [String] ID of the parent folder.
        #
        #   @param path [String] Path of the folder in the file manager.
      end
    end
  end
end
