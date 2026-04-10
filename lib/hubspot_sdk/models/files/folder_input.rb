# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class FolderInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   Desired name for the folder.
        #
        #   @return [String]
        required :name, String

        # @!attribute parent_folder_id
        #   FolderId of the parent of the created folder. If not specified, the folder will
        #   be created at the root level. parentFolderId and parentFolderPath cannot be set
        #   at the same time.
        #
        #   @return [String, nil]
        optional :parent_folder_id, String, api_name: :parentFolderId

        # @!attribute parent_path
        #   Path of the parent of the created folder. If not specified the folder will be
        #   created at the root level. parentFolderPath and parentFolderId cannot be set at
        #   the same time.
        #
        #   @return [String, nil]
        optional :parent_path, String, api_name: :parentPath

        # @!method initialize(name:, parent_folder_id: nil, parent_path: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Files::FolderInput} for more details.
        #
        #   @param name [String] Desired name for the folder.
        #
        #   @param parent_folder_id [String] FolderId of the parent of the created folder. If not specified, the folder will
        #
        #   @param parent_path [String] Path of the parent of the created folder. If not specified the folder will be cr
      end
    end
  end
end
