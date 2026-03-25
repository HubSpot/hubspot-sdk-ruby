# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class FolderUpdateInput < HubspotSDK::Internal::Type::BaseModel
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

        # @!method initialize(name: nil, parent_folder_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FolderUpdateInput} for more details.
        #
        #   @param name [String] New name. If specified the folder's name and fullPath will change. All children
        #
        #   @param parent_folder_id [Integer] New parent folderId. If changed, the folder and all it's children will be moved
      end
    end
  end
end
