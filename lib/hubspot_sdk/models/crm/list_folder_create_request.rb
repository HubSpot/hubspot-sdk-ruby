# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ListFolderCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the folder to be created.
        #
        #   @return [String]
        required :name, String

        # @!attribute parent_folder_id
        #   The folder this should be created in, if not specified will be created in the
        #   root folder 0.
        #
        #   @return [String, nil]
        optional :parent_folder_id, String, api_name: :parentFolderId

        # @!method initialize(name:, parent_folder_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ListFolderCreateRequest} for more details.
        #
        #   @param name [String] The name of the folder to be created.
        #
        #   @param parent_folder_id [String] The folder this should be created in, if not specified will be created in the ro
      end
    end
  end
end
