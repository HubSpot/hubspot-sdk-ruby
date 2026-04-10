# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class FolderUpdateInputWithID < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the folder to be updated.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   New name. If specified the folder's name and fullPath will change. All children
        #   of the folder will be updated accordingly.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_id
        #   New parent folderId. If changed, the folder and all it's children will be moved
        #   into the specified folder. parentFolderId and parentFolderPath cannot be
        #   specified at the same time.
        #
        #   @return [Integer, nil]
        optional :parent_folder_id, Integer, api_name: :parentFolderId

        # @!method initialize(id:, name: nil, parent_folder_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Files::FolderUpdateInputWithID} for more details.
        #
        #   @param id [String] The unique identifier of the folder to be updated.
        #
        #   @param name [String] New name. If specified the folder's name and fullPath will change. All children
        #
        #   @param parent_folder_id [Integer] New parent folderId. If changed, the folder and all it's children will be moved
      end
    end
  end
end
