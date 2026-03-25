# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class FolderUpdateInputWithID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the folder to be updated.
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The new name for the folder, which will also update the fullPath and all
        #   children of the folder.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_id
        #   The ID of the new parent folder, which will move the folder and its children
        #   into the specified folder.
        #
        #   @return [Integer, nil]
        optional :parent_folder_id, Integer, api_name: :parentFolderId

        # @!method initialize(id:, name: nil, parent_folder_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FolderUpdateInputWithID} for more details.
        #
        #   @param id [String] The unique identifier of the folder to be updated.
        #
        #   @param name [String] The new name for the folder, which will also update the fullPath and all childre
        #
        #   @param parent_folder_id [Integer] The ID of the new parent folder, which will move the folder and its children int
      end
    end
  end
end
