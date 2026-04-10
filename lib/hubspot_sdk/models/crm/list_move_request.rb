# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class ListMoveRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute list_id
        #   The Id of the list to move.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute new_folder_id
        #   The Id of folder to move the list to, the root folder is Id 0.
        #
        #   @return [String]
        required :new_folder_id, String, api_name: :newFolderId

        # @!method initialize(list_id:, new_folder_id:)
        #   @param list_id [String] The Id of the list to move.
        #
        #   @param new_folder_id [String] The Id of folder to move the list to, the root folder is Id 0.
      end
    end
  end
end
